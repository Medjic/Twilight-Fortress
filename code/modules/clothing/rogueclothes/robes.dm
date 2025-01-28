/obj/item/clothing/suit/roguetown/shirt/robe
	slot_flags = ITEM_SLOT_ARMOR
	name = "ряса"
	desc = ""
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	icon_state = "white_robe"
	icon = 'icons/roguetown/clothing/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/armor.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_armor.dmi'
	boobed = TRUE
	flags_inv = HIDEBOOB|HIDECROTCH
	color = "#7c6d5c"
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/clothing/suit/roguetown/shirt/robe/astrata
	slot_flags = ITEM_SLOT_ARMOR
	name = "ряса солнца"
	desc = "Одежда, которую носили те, кто служил Астрате."
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	icon_state = "astratarobe"
	icon = 'icons/roguetown/clothing/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/armor.dmi'
	sleeved = null
	boobed = TRUE
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/suit/roguetown/shirt/robe/noc
	slot_flags = ITEM_SLOT_ARMOR
	name = "ряса луны"
	desc = "Одежда, которую носят те, кто поклоняется богине ночи - Нок."
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	icon_state = "nocrobe"
	icon = 'icons/roguetown/clothing/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/armor.dmi'
	sleeved = null
	boobed = TRUE
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/suit/roguetown/shirt/robe/necromancer
	slot_flags = ITEM_SLOT_ARMOR
	name = "одеяние некроманта"
	desc = "Одежда, пропитанная темной магией и запахом мертвечины."
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	icon_state = "necromrobe"
	icon = 'icons/roguetown/clothing/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/armor.dmi'
	sleeved = null
	boobed = TRUE
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/suit/roguetown/shirt/robe/dendor
	slot_flags = ITEM_SLOT_ARMOR
	name = "одеяние из вереска"
	desc = "Одежда, которую носили друиды, служившие Дендору."
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	icon_state = "dendorrobe"
	icon = 'icons/roguetown/clothing/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/armor.dmi'
	sleeved = null
	boobed = TRUE
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/suit/roguetown/shirt/robe/necra
	slot_flags = ITEM_SLOT_ARMOR
	name = "траурное одеяние"
	desc = "Черные одежды, покрывающие тело, напоминают те, что изображены на картинах самого Возчего."
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	icon_state = "necrarobe"
	icon = 'icons/roguetown/clothing/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/armor.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_armor.dmi'
	boobed = TRUE
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/suit/roguetown/shirt/robe/black
	color = "#222222"

/obj/item/clothing/suit/roguetown/shirt/robe/white
	color = "#F9F9F9"

/obj/item/clothing/suit/roguetown/shirt/robe/priest
	name = "солнечные облачения"
	desc = "Священные облачения, освященные божеством. Неверным стоит соблюдать осторожность."
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	icon_state = "priestrobe"
	resistance_flags = FIRE_PROOF | ACID_PROOF
	armor = list("blunt" = 25, "slash" = 25, "stab" = 25, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	color = null

/obj/item/clothing/suit/roguetown/shirt/robe/priest/pickup(mob/living/user)
	if(!HAS_TRAIT(user, TRAIT_CHOSEN))
		to_chat(user, "<font color='yellow'>НЕДОСТОЙНЫЙ! ОСТАВЬ ОДЕЯНИЕ СИЕ ИЛИ УЗРИ БОЖЕСТВЕННЫЙ ГНЕВ!</font>")
		spawn(30)
			if(loc == user)
				user.adjust_fire_stacks(5)
				user.IgniteMob()
	..()

/obj/item/clothing/suit/roguetown/shirt/robe/courtmage
	color = "#6c6c6c"

/obj/item/clothing/suit/roguetown/shirt/robe/mage/Initialize()
	color = pick("#4756d8", "#759259", "#bf6f39", "#c1b144", "#b8252c")
	. = ..()

/obj/item/clothing/suit/roguetown/shirt/robe/mageblue
	color = "#4756d8"

/obj/item/clothing/suit/roguetown/shirt/robe/magegreen
	color = "#759259"

/obj/item/clothing/suit/roguetown/shirt/robe/mageorange
	color = "#bf6f39"

/obj/item/clothing/suit/roguetown/shirt/robe/magered
	color = "#b8252c"

/obj/item/clothing/suit/roguetown/shirt/robe/mageyellow
	color = "#c1b144"

/obj/item/clothing/suit/roguetown/shirt/robe/merchant
	name = "гильдейские одеяния"
	desc = "Изысканная одежда, популярная среди купцов."
	icon_state = "merrobe"
	sellprice = 30
	color = null

/obj/item/clothing/suit/roguetown/shirt/robe/nun
	color = null
	icon_state = "nun"
	item_state = "nun"
	allowed_sex = list(MALE, FEMALE)

/obj/item/clothing/suit/roguetown/shirt/robe/wizard
	name = "роба волшебника"
	desc = "Какой же ансамбль волшебника будет полным без его мантии?"
	icon_state = "wizardrobes"
	icon = 'icons/roguetown/clothing/shirts.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/shirts.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/shirts.dmi'
	boobed = TRUE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	allowed_sex = list(MALE, FEMALE)
	allowed_race = NON_DWARVEN_RACE_TYPES
	color = null
	sellprice = 30

/obj/item/clothing/suit/roguetown/shirt/robe/physician
	name = "чумной плащ"
	desc = "Medicum morbo adhibere."
	icon = 'icons/roguetown/clothing/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/armor.dmi'
	icon_state = "physcoat"
	slot_flags = ITEM_SLOT_ARMOR
	sleeved = null
	boobed = TRUE
	color = null
	flags_inv = HIDEBOOB|HIDETAIL //DO NOT CHANGE THIS, I WILL THROW HANDS WITH YOU IDIOTS
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	
/obj/item/clothing/suit/roguetown/shirt/robe/eora
	slot_flags = ITEM_SLOT_ARMOR
	name = "эоранская ряса"
	desc = "Священное одеяние, предназначенное для использования последователями Эоры."
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	icon_state = "eorarobes"
	icon = 'icons/roguetown/clothing/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/armor.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_armor.dmi'
	boobed = TRUE
	color = null
	flags_inv = HIDEBOOB|HIDECROTCH
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	var/fanatic_wear = FALSE

/obj/item/clothing/suit/roguetown/shirt/robe/eora/alt
	name = "приподнятая эоранская ряса"
	desc = "Приподнятая ряса, открывающая ноги и делающая передвижение по местности более комфортным."
	body_parts_covered = null
	icon_state = "eorastraps"
	fanatic_wear = TRUE

/obj/item/clothing/suit/roguetown/shirt/robe/eora/attack_right(mob/user)
	switch(fanatic_wear)
		if(FALSE)
			name = "приподнятая эоранская ряса"
			desc = "Приподнятая ряса, открывающая ноги и делающая передвижение по местности более комфортным."
			body_parts_covered = CHEST|GROIN|ARMS|VITALS
			icon_state = "eorastraps"
			fanatic_wear = TRUE
			flags_inv = HIDEBOOB|HIDECROTCH
			to_chat(usr, span_warning("Now wearing differently."))
		if(TRUE)
			name = "эоранская ряса"
			desc = "Священное одеяние, предназначенное для использования последователями Эоры."
			body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
			icon_state = "eorarobes"
			fanatic_wear = FALSE
			flags_inv = HIDEBOOB|HIDECROTCH
			to_chat(usr, span_warning("Now wearing normally."))
	update_icon()
	if(ismob(loc))
		var/mob/L = loc
		L.update_inv_armor()
