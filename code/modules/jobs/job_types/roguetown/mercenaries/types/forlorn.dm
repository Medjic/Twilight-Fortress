/datum/subclass/forlorn
	name = "Forlorn Hope Mercenary"
	tutorial = "Орден Забытой Надежды - святой орден, основанный во имя Нока и помощи ближним. \
	Теперь он полон раненых, ветеранов и безземельных гражданской войны в Валории. \
	Возьмите знамя и снова сражайтесь во имя Десяти или используйте притворство веры и фанатизма, чтобы свести концы с концами любыми средствами."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_TOLERATED_UP
	outfit = /datum/outfit/job/roguetown/mercenary/forlorn
	maximum_possible_slots = 10
	min_pq = 15
	torch = FALSE
	cmode_music = 'sound/music/combat_forlorn.ogg'
	category_tags = list(CTAG_MERCENARY)

/datum/outfit/job/roguetown/mercenary/forlorn/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = /obj/item/clothing/shoes/roguetown/armor
	neck = /obj/item/clothing/neck/roguetown/gorget/alt
	head = /obj/item/clothing/head/roguetown/helmet/volfplate
	pants = /obj/item/clothing/under/roguetown/tights/black
	gloves = /obj/item/clothing/gloves/roguetown/leather/black
	belt = /obj/item/storage/belt/rogue/leather
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/black
	armor = /obj/item/clothing/suit/roguetown/armor/brigandine/light
	beltr = /obj/item/storage/keyring/mercenary
	beltl = /obj/item/rogueweapon/mace/warhammer/steel
	backr = /obj/item/storage/backpack/rogue/satchel
	backl = /obj/item/rogueweapon/shield/heater
	backpack_contents = list(/obj/item/rogueweapon/huntingknife)

	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/maces, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
		H.change_stat("strength", 2)
		H.change_stat("endurance", 2)
		H.change_stat("constitution", 2)
		H.change_stat("perception", 1)
		H.change_stat("speed", 1)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
