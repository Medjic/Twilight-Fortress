/datum/job/roguetown/prince
	title = "Heir"
	f_title = "Heiress"
	flag = PRINCE
	department_flag = YOUNGFOLK
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	allowed_races = RACES_TOLERATED_UP 
	allowed_sexes = list(MALE, FEMALE)
	allowed_ages = list(AGE_ADULT)

	tutorial = "Вы никогда не ощущали зимней грызни, не знали, что такое голод, и уж тем более не знали, что крестьяне называют честным рабочим днем. \
	В юности вы были свободны, как любая птица в небе, но это в прошлом. \
	Ваши благородные обязанности быстро приближаются, и скоро вам придется выбирать: \
	Продолжать вести праздный образ жизни или стойко выполнять возложенные на вас обязанности."

	outfit = /datum/outfit/job/roguetown/prince
	display_order = JDO_PRINCE
	give_bank_account = TRUE
	min_pq = -10
	max_pq = null
	ruler_family = TRUE
	lord_rel_type = REL_TYPE_OFFSPRING

/datum/job/roguetown/prince/after_spawn(mob/living/H, mob/M, latejoin)
	. = ..()
	if(GLOB.lordsurname && H)
		give_lord_surname(H)

/datum/outfit/job/roguetown/prince/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.gender == MALE)
		head = /obj/item/clothing/head/roguetown/nyle
		shirt = /obj/item/clothing/suit/roguetown/armor/chainmail
		armor = /obj/item/clothing/suit/roguetown/shirt/dress/royal/prince
		pants = /obj/item/clothing/under/roguetown/tights/black
		shoes = /obj/item/clothing/shoes/roguetown/nobleboot/thighboots
		belt = /obj/item/storage/belt/rogue/leather
		beltl = /obj/item/storage/keyring/royal
		beltr = /obj/item/storage/belt/rogue/pouch/coins/rich
		backr = /obj/item/storage/backpack/rogue/satchel
		if(H.mind)
			H.mind.adjust_skillrank(/datum/skill/combat/maces, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
			H.change_stat("perception", 1)
			H.change_stat("strength", 1)
			H.change_stat("constitution", 1)
			H.change_stat("endurance", -2) //a life free from hard labor
			H.change_stat("speed", 1)
			H.change_stat("intelligence", 2)

	else
		head = /obj/item/clothing/head/roguetown/nyle
		beltl = /obj/item/storage/keyring/royal
		belt = /obj/item/storage/belt/rogue/leather/cloth/lady
		beltr = /obj/item/storage/belt/rogue/pouch/coins/rich
		shirt = /obj/item/clothing/suit/roguetown/armor/chainmail
		armor = /obj/item/clothing/suit/roguetown/shirt/dress/royal/princess
		shoes = /obj/item/clothing/shoes/roguetown/armor/nobleboot
		if(H.mind)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/stealing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
			H.change_stat("perception", 2)
			H.change_stat("endurance", -2)
			H.change_stat("strength", -1)
			H.change_stat("constitution", 1)
			H.change_stat("speed", 2)
			H.change_stat("intelligence", 2)
	ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
