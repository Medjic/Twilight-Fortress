/datum/job/roguetown/mayor
	title = "Mayor"
	flag = ELDER
	department_flag = YEOMEN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_TOLERATED_UP
	tutorial = "Будь вы продажным политиком или настоящим благодетелем, горожане теперь обращаются к вам за советом по мелким вопросам. \
				Герцог может и носить официальный титул, но с шерифом под вашим началом, подчинитесь ли вы грузу традиций или измените саму идею власти?"
	whitelist_req = TRUE
	outfit = /datum/outfit/job/roguetown/mayor
	display_order = JDO_MAYOR
	min_pq = 5
	max_pq = null
	give_bank_account = 35

	//cmode_music = 'sound/music/combat_bog.ogg'

/datum/outfit/job/roguetown/mayor
	name = "Mayor"
	jobtype = /datum/job/roguetown/mayor

/datum/outfit/job/roguetown/mayor/pre_equip(mob/living/carbon/human/H)
	..()

	r_hand = /obj/item/gun/ballistic/firearm/arquebus_pistol
	head = /obj/item/clothing/head/roguetown/stewardtophat
	armor = /obj/item/clothing/suit/roguetown/shirt/tunic/noblecoat
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/black
	pants = /obj/item/clothing/under/roguetown/tights/black
	shoes = /obj/item/clothing/shoes/roguetown/armor
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/ammo_holder/bullet/lead
	beltl = /obj/item/flashlight/flare/torch/lantern
	backr = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/rogueweapon/huntingknife/idagger/steel/special = 1, /obj/item/powderflask = 1, /obj/item/storage/keyring/mayor = 1, /obj/item/storage/belt/rogue/pouch/coins/rich = 1)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/firearms, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/maces, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/axes, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/masonry, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/engineering, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/fishing, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/treatment, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
		H.change_stat("perception", 4)
		H.change_stat("endurance", 2)
		H.change_stat("speed", -3)
		H.change_stat("intelligence", 5)
	H.verbs |= /mob/proc/haltyell
