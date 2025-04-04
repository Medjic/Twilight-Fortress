/datum/anvil_recipe
	var/name
	var/list/additional_items = list()
	var/appro_skill = /datum/skill/craft/blacksmithing
	var/req_bar
	var/created_item
	var/skill_level = 2
	var/obj/item/needed_item
	var/quality_mod = 0
	var/progress
	var/i_type

	var/datum/parent

/datum/anvil_recipe/New(datum/P, ...)
	parent = P
	. = ..()

/datum/anvil_recipe/proc/advance(mob/user, breakthrough = FALSE)
	if(progress == 100)
		to_chat(user, span_info("Готово."))
		user.visible_message(span_warning("[user] ударяет по заготовке!"))
		return FALSE
	if(needed_item)
		to_chat(user, span_info("Теперь пора добавить \a [initial(needed_item.name)]."))
		user.visible_message(span_warning("[user] ударяет по заготовке!"))
		return FALSE
	var/moveup = 1
	var/user_skill = user.mind.get_skill_level(appro_skill)
	var/proab = max((skill_level - user_skill)*7, 1)
	if(user.mind)
		moveup += round((user_skill * 6) * (breakthrough == 1 ? 1.5 : 1))
		moveup -= 3 * skill_level

	if(!user_skill)
		proab = max(proab, 25)

	if(prob(proab))
		moveup = 0
	progress = min(progress + moveup, 100)
	if(progress == 100 && additional_items.len)
		needed_item = pick(additional_items)
		additional_items -= needed_item
		progress = 0
	if(!moveup)
		if(prob(round(proab/2)))
			user.visible_message(span_warning("[user] spoils the bar!"))
			if(parent)
				var/obj/item/P = parent
				qdel(P)
			return FALSE
		else
			user.visible_message(span_warning("[user] неуклюже обращается с заготовкой!"))
			progress -= skill_level * 2 - user_skill //Lose progress when you make mistakes
			return FALSE
	else
		if(user.mind)
			if(isliving(user))
				var/mob/living/L = user
				var/amt2raise = L.STAINT/3 // (L.STAINT+L.STASTR)/4 optional: add another stat that isn't int
				//i feel like leveling up takes forever regardless, this would just make it faster
				if(amt2raise > 0 && moveup > 0) //Can't raise the skill if you aren't making any progress
					user.mind.add_sleep_experience(appro_skill, amt2raise, FALSE)
				else if (prob(20)) //Might take a few hits to realize you're wasting your time
					to_chat(user, span_warning("This is too complicated for my current skill level, I'm not making any progress."))
		if(breakthrough)
			user.visible_message(span_warning("[user] ударяет по заготовке!"))
		else
			user.visible_message(span_info("[user] ударяет по заготовке!"))
		return TRUE

/datum/anvil_recipe/proc/item_added(mob/user)
	user.visible_message(span_info("[user] добавляет [initial(needed_item.name)]."))
	needed_item = null
