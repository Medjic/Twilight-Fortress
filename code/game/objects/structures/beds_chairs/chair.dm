/obj/structure/chair
	name = "chair"
	desc = ""
	icon = 'icons/obj/chairs.dmi'
	icon_state = "chair"
	anchored = TRUE
	can_buckle = 1
	buckle_lying = 0 //you sit in a chair, not lay
	resistance_flags = NONE
	max_integrity = 250
	integrity_failure = 0.1
	var/buildstacktype
	var/buildstackamount = 1
	var/item_chair = /obj/item/chair // if null it can't be picked up
	layer = OBJ_LAYER

/obj/structure/chair/examine(mob/user)
	. = ..()
//	. += span_notice("It's held together by a couple of <b>bolts</b>.")
//	if(!has_buckled_mobs())
//		. += span_notice("Drag your sprite to sit in it.")

/obj/structure/chair/Initialize()
	. = ..()
	if(!anchored)	//why would you put these on the shuttle?
		addtimer(CALLBACK(src, PROC_REF(RemoveFromLatejoin)), 0)

/obj/structure/chair/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/simple_rotation,ROTATION_ALTCLICK | ROTATION_CLOCKWISE, CALLBACK(src, PROC_REF(can_user_rotate)),CALLBACK(src, PROC_REF(can_be_rotated)),null)

/obj/structure/chair/proc/can_be_rotated(mob/user)
	return TRUE

/obj/structure/chair/proc/can_user_rotate(mob/user)
	var/mob/living/L = user

	if(istype(L))
		if(!user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
			return FALSE
		else
			return TRUE
	else if(isobserver(user) && CONFIG_GET(flag/ghost_interaction))
		return TRUE
	return FALSE

/obj/structure/chair/Destroy()
	RemoveFromLatejoin()
	return ..()

/obj/structure/chair/proc/RemoveFromLatejoin()
	SSjob.latejoin_trackers -= src	//These may be here due to the arrivals shuttle

/obj/structure/chair/deconstruct()
	// If we have materials, and don't have the NOCONSTRUCT flag
	if(!(flags_1 & NODECONSTRUCT_1))
		if(buildstacktype)
			new buildstacktype(loc,buildstackamount)
	..()

/obj/structure/chair/attack_paw(mob/user)
	return attack_hand(user)

/obj/structure/chair/narsie_act()
	var/obj/structure/chair/wood/W = new/obj/structure/chair/wood(get_turf(src))
	W.setDir(dir)
	qdel(src)

/obj/structure/chair/attackby(obj/item/W, mob/user, params)
	if(W.tool_behaviour == TOOL_WRENCH && !(flags_1&NODECONSTRUCT_1))
		W.play_tool_sound(src)
		deconstruct()
	else
		return ..()

/obj/structure/chair/attack_tk(mob/user)
	if(!anchored || has_buckled_mobs() || !isturf(user.loc))
		..()
	else
		setDir(turn(dir,-90))

/obj/structure/chair/proc/handle_rotation(direction)
	handle_layer()
	if(has_buckled_mobs())
		for(var/m in buckled_mobs)
			var/mob/living/buckled_mob = m
			buckled_mob.setDir(direction)

/obj/structure/chair/proc/handle_layer()
	if(has_buckled_mobs() && dir == NORTH)
		layer = ABOVE_MOB_LAYER
	else
		layer = OBJ_LAYER

/obj/structure/chair/post_buckle_mob(mob/living/M)
	. = ..()
	handle_layer()

/obj/structure/chair/post_unbuckle_mob()
	. = ..()
	handle_layer()

/obj/structure/chair/setDir(newdir)
	..()
	handle_rotation(newdir)

// Chair types

///Material chair
/obj/structure/chair/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR
	item_chair = /obj/item/chair/greyscale
	buildstacktype = null //Custom mats handle this


/obj/structure/chair/wood
	icon_state = "chair1"
	name = "стул"
	desc = ""
	icon = 'icons/roguetown/misc/structure.dmi'
	resistance_flags = FLAMMABLE
	max_integrity = 70
	buildstacktype = null
	buildstackamount = 0
	item_chair = null
	anchored = FALSE

/obj/structure/chair/wood/narsie_act()
	return

/obj/structure/chair/wood/wings
	icon_state = "wooden_chair_wings"
	item_chair = /obj/item/chair/wood/wings

/obj/structure/chair/comfy
	name = "comfy chair"
	desc = ""
	icon_state = "comfychair"
	color = rgb(255,255,255)
	resistance_flags = FLAMMABLE
	max_integrity = 70
	buildstackamount = 2
	item_chair = null
	var/mutable_appearance/armrest

/obj/structure/chair/comfy/Initialize()
	armrest = GetArmrest()
	armrest.layer = ABOVE_MOB_LAYER
	armrest.plane = GAME_PLANE_UPPER
	return ..()

/obj/structure/chair/comfy/proc/GetArmrest()
	return mutable_appearance('icons/obj/chairs.dmi', "comfychair_armrest")

/obj/structure/chair/comfy/Destroy()
	QDEL_NULL(armrest)
	return ..()

/obj/structure/chair/comfy/post_buckle_mob(mob/living/M)
	. = ..()
	update_armrest()

/obj/structure/chair/comfy/proc/update_armrest()
	if(has_buckled_mobs())
		add_overlay(armrest)
	else
		cut_overlay(armrest)

/obj/structure/chair/comfy/post_unbuckle_mob()
	. = ..()
	update_armrest()

/obj/structure/chair/comfy/brown
	color = rgb(255,113,0)

/obj/structure/chair/comfy/beige
	color = rgb(255,253,195)

/obj/structure/chair/comfy/teal
	color = rgb(0,255,255)

/obj/structure/chair/comfy/black
	color = rgb(167,164,153)

/obj/structure/chair/comfy/lime
	color = rgb(255,251,0)

/obj/structure/chair/office
	anchored = FALSE
	buildstackamount = 5
	item_chair = null
	icon_state = "officechair_dark"


/obj/structure/chair/office/Moved()
	. = ..()
	if(has_gravity())
		playsound(src, 'sound/blank.ogg', 100, TRUE)

/obj/structure/chair/office/light
	icon_state = "officechair_white"

//Stool

/obj/structure/chair/stool
	name = "stool"
	desc = ""
	icon_state = "stool"
	can_buckle = 0
	buildstackamount = 1
	item_chair = /obj/item/chair/stool

/obj/structure/chair/stool/narsie_act()
	return

/obj/structure/chair/MouseDrop(over_object, src_location, over_location)
	. = ..()
	if(over_object == usr && Adjacent(usr))
		if(QDELETED(src) || !item_chair || !usr.can_hold_items() || has_buckled_mobs() || src.flags_1 & NODECONSTRUCT_1)
			return
		if(!usr.canUseTopic(src, BE_CLOSE, ismonkey(usr)))
			return
		usr.visible_message(span_notice("[usr] grabs \the [src.name]."), span_notice("I grab \the [src.name]."))
		var/obj/item/C = new item_chair(loc)
		item_chair = null
		TransferComponents(C)
		usr.put_in_hands(C)
		qdel(src)

/obj/structure/chair/stool/bar
	name = "bar stool"
	desc = ""
	icon_state = "bar"
	item_chair = /obj/item/chair/stool/bar

/obj/item/chair
	name = "chair"
	desc = ""
	icon = 'icons/obj/chairs.dmi'
	icon_state = "chair_toppled"
	item_state = "chair"
	lefthand_file = 'icons/mob/inhands/misc/chairs_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/misc/chairs_righthand.dmi'
	w_class = WEIGHT_CLASS_HUGE
	force = 15
	throwforce = 10
	throw_range = 3
	hitsound = 'sound/blank.ogg'
	hit_reaction_chance = 50
	twohands_required = TRUE
	obj_flags = CAN_BE_HIT
	var/break_chance = 23 //Likely hood of smashing the chair.
	var/obj/structure/chair/origin_type = /obj/structure/chair

/obj/item/chair/suicide_act(mob/living/carbon/user)
	user.visible_message(span_suicide("[user] begins hitting [user.p_them()]self with \the [src]! It looks like [user.p_theyre()] trying to commit suicide!"))
	playsound(src,hitsound,50,TRUE)
	return BRUTELOSS

/obj/item/chair/narsie_act()
	var/obj/item/chair/wood/W = new/obj/item/chair/wood(get_turf(src))
	W.setDir(dir)
	qdel(src)

/obj/item/chair/attack_self(mob/user)
	plant(user)

/obj/item/chair/proc/plant(mob/user)
	var/turf/T = get_turf(loc)
	if(!isfloorturf(T))
		to_chat(user, span_warning("I need ground to plant this on!"))
		return
	for(var/obj/A in T)
		if(istype(A, /obj/structure/chair))
			to_chat(user, span_warning("There is already a chair here!"))
			return
		if(A.density && !(A.flags_1 & ON_BORDER_1))
			to_chat(user, span_warning("There is already something here!"))
			return

	user.visible_message(span_notice("[user] rights \the [src.name]."), span_notice("I right \the [name]."))
	var/obj/structure/chair/C = new origin_type(get_turf(loc))
	TransferComponents(C)
	C.setDir(user.dir)
	qdel(src)

/obj/item/chair/proc/smash(mob/living/user)
	qdel(src)

/obj/item/chair/afterattack(atom/target, mob/living/carbon/user, proximity)
	. = ..()
	if(!proximity)
		return
	if(prob(break_chance))
		user.visible_message(span_warning("[src] is smashed to pieces!"))
		if(iscarbon(target))
			var/mob/living/carbon/C = target
			if(C.health < C.maxHealth*0.5)
				C.Paralyze(20)
		smash(user)

/obj/item/chair/greyscale
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR
	origin_type = /obj/structure/chair/greyscale

/obj/item/chair/stool
	name = "stool"
	icon_state = "stool_toppled"
	item_state = "stool"
	origin_type = /obj/structure/chair/stool
	break_chance = 0 //It's too sturdy.

/obj/item/chair/stool/bar
	name = "bar stool"
	icon_state = "bar_toppled"
	item_state = "stool_bar"
	origin_type = /obj/structure/chair/stool/bar

/obj/item/chair/stool/narsie_act()
	return //sturdy enough to ignore a god

/obj/item/chair/wood
	name = "wooden chair"
	icon_state = "wooden_chair_toppled"
	item_state = "woodenchair"
	resistance_flags = FLAMMABLE
	max_integrity = 70
	hitsound = 'sound/blank.ogg'
	origin_type = /obj/structure/chair/wood
	break_chance = 50

/obj/item/chair/wood/narsie_act()
	return

/obj/item/chair/wood/wings
	icon_state = "wooden_chair_wings_toppled"
	origin_type = /obj/structure/chair/wood/wings
/obj/structure/chair/mime
	name = "invisible chair"
	desc = ""
	anchored = FALSE
	icon_state = null
	buildstacktype = null
	item_chair = null
	flags_1 = NODECONSTRUCT_1
	alpha = 0

/obj/structure/chair/mime/post_buckle_mob(mob/living/M)
	M.pixel_y += 5

/obj/structure/chair/mime/post_unbuckle_mob(mob/living/M)
	M.pixel_y -= 5
