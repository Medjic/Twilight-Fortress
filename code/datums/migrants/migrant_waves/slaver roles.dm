/datum/migrant_role/slaver/master
	name = "Zybantynian Master"
	greet_text = "Вы - предводитель зибантийской группы работорговцев. \
	Вы прибыли на остров Энигма из западных пустынь Зибантии в надежде разбогатеть за счет торговли несчастными рабочими. \
	Некоторые называют эту практику презренной, но она, несомненно, помогает набить ваши карманы до возвращения в Зибантию."
	outfit = /datum/outfit/job/roguetown/slaver/master
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_TOLERATED_UP
	show_wanderer_examine = FALSE
	show_foreign_examine = TRUE

/datum/outfit/job/roguetown/slaver/master/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/sallet/visored
	mask = /obj/item/clothing/head/roguetown/roguehood/shalalz
	neck = /obj/item/clothing/neck/roguetown/chaincoif
	shoes = /obj/item/clothing/shoes/roguetown/armor/shalal
	pants = /obj/item/clothing/under/roguetown/chainlegs
	gloves = /obj/item/clothing/gloves/roguetown/leather/angle
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/purple
	belt = /obj/item/storage/belt/rogue/leather/shalalz
	armor = /obj/item/clothing/suit/roguetown/armor/plate/scale
	cloak = /obj/item/clothing/cloak/cape/purple
	backl = /obj/item/storage/backpack/rogue/satchel
	beltl = /obj/item/flashlight/flare/torch/lantern
	beltr = /obj/item/rogueweapon/whip/antique
	backpack_contents = list(/obj/item/reagent_containers/glass/bottle/rogue/lesserhealthpot = 1, /obj/item/rope/chain = 1, /obj/item/flint = 1)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/axes, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/treatment, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
		H.change_stat("strength", 3)
		H.change_stat("speed", 2)
		H.change_stat("constitution", 2)
		H.change_stat("endurance", 2)
		H.cmode_music = 'sound/music/combat_zybantine.ogg'

	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_XENOPHOBIC, TRAIT_GENERIC)

/datum/migrant_role/slaver/slavemercsword
	name = "Zybantynian Blade Mercenary"
	greet_text = "Наемная рука для группы зибантийских работорговцев. Вы прибыли из западных пустынь Зибантии и наняты на неделю, которую проведете на этом острове."
	outfit = /datum/outfit/job/roguetown/slaver/slavemercsword
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_TOLERATED_UP
	grant_lit_torch = TRUE
	show_wanderer_examine = FALSE
	show_foreign_examine = TRUE

/datum/outfit/job/roguetown/slaver/slavemercsword/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/sallet
	mask = /obj/item/clothing/head/roguetown/roguehood/shalalz
	neck = /obj/item/storage/belt/rogue/pouch/coins/poor
	shoes = /obj/item/clothing/shoes/roguetown/armor/shalal
	pants = /obj/item/clothing/under/roguetown/trou/leather
	gloves = /obj/item/clothing/gloves/roguetown/leather/angle
	belt = /obj/item/storage/belt/rogue/leather/shalalz
	armor = /obj/item/clothing/suit/roguetown/armor/plate/scale
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson
	backl = /obj/item/storage/backpack/rogue/satchel
	backr = /obj/item/rogueweapon/sword/long/rider
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor 
	backpack_contents = list(/obj/item/rope/chain = 1, /obj/item/rogueweapon/huntingknife/idagger = 1)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/axes, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/treatment, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
		H.change_stat("strength", 2)
		H.change_stat("speed", 1)
		H.change_stat("intelligence", 2)
		H.change_stat("constitution", 1)
		H.change_stat("endurance", 1)
		H.cmode_music = 'sound/music/combat_zybantine.ogg'

	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_XENOPHOBIC, TRAIT_GENERIC)

/datum/migrant_role/slaver/slavemercwhip
	name = "Zybantynian Whip Mercenary"
	greet_text = "Наемная рука для группы зибантийских работорговцев. Вы прибыли из западных пустынь Зибантии и наняты на неделю, которую проведете на этом острове."
	outfit = /datum/outfit/job/roguetown/slaver/slavemercwhip
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_TOLERATED_UP
	grant_lit_torch = TRUE
	show_wanderer_examine = FALSE
	show_foreign_examine = TRUE

/datum/outfit/job/roguetown/slaver/slavemercwhip/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/sallet
	mask = /obj/item/clothing/head/roguetown/roguehood/shalalz
	neck = /obj/item/storage/belt/rogue/pouch/coins/poor
	shoes = /obj/item/clothing/shoes/roguetown/armor/shalal
	pants = /obj/item/clothing/under/roguetown/trou/leather
	gloves = /obj/item/clothing/gloves/roguetown/leather/angle
	belt = /obj/item/storage/belt/rogue/leather/shalalz
	armor = /obj/item/clothing/suit/roguetown/armor/plate/scale
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson
	backl = /obj/item/storage/backpack/rogue/satchel
	beltr = /obj/item/rogueweapon/whip
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor 
	backpack_contents = list(/obj/item/rope/chain = 1, /obj/item/rogueweapon/huntingknife/idagger = 1)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/axes, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/treatment, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
		H.change_stat("strength", 2)
		H.change_stat("speed", 1)
		H.change_stat("intelligence", 2)
		H.change_stat("constitution", 1)
		H.change_stat("endurance", 1)
		H.cmode_music = 'sound/music/combat_zybantine.ogg'

	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_XENOPHOBIC, TRAIT_GENERIC)

/datum/migrant_role/slaver/slavemercbow
	name = "Zybantynian Light Crossbow Mercenary"
	greet_text = "Наемный убийца в отряде зибантийских работорговцев, а также первый помощник со скидкой. \
	Вы прибыли из западных пустынь Зибантии и наняты на неделю, которую проведете на этом острове."
	outfit = /datum/outfit/job/roguetown/slaver/slavemercbow
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_TOLERATED_UP
	grant_lit_torch = TRUE
	show_wanderer_examine = FALSE
	show_foreign_examine = TRUE

/datum/outfit/job/roguetown/slaver/slavemercbow/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/sallet
	mask = /obj/item/clothing/head/roguetown/roguehood/shalalz
	neck = /obj/item/clothing/neck/roguetown/gorget
	shoes = /obj/item/clothing/shoes/roguetown/armor/shalal
	pants = /obj/item/clothing/under/roguetown/trou/leather
	gloves = /obj/item/clothing/gloves/roguetown/leather/angle
	belt = /obj/item/storage/belt/rogue/leather/shalalz
	armor = /obj/item/clothing/suit/roguetown/armor/chainmail
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson
	backl = /obj/item/storage/backpack/rogue/satchel
	backr = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor 
	beltr = /obj/item/ammo_holder/quiver/bolts
	backpack_contents = list(/obj/item/rope/chain = 1, /obj/item/rogueweapon/huntingknife/cleaver/combat = 1, /obj/item/needle = 1)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/axes, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/treatment, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
		H.change_stat("perception", 3)
		H.change_stat("speed", 2)
		H.change_stat("intelligence", 3)
		H.change_stat("endurance", 2)
		H.cmode_music = 'sound/music/combat_zybantine.ogg'

	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_XENOPHOBIC, TRAIT_GENERIC)

/datum/migrant_role/slaver/slavez
	name = "Slave"
	greet_text = "Вы - неудачливый раб, захваченный и обученный для работы, теперь вас перевозят из западных пустынь Зибантии на заполненный болотами остров Энигма."
	outfit = /datum/outfit/job/roguetown/slaver/slavez
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	grant_lit_torch = TRUE
	show_wanderer_examine = FALSE
	show_foreign_examine = TRUE

/datum/outfit/job/roguetown/slaver/slavez/pre_equip(mob/living/carbon/human/H)
	..()
	neck = /obj/item/clothing/neck/roguetown/collar/leather/cursed
	beltl = /obj/item/storage/belt/rogue/pouch
	beltr = /obj/item/flint
	if(H.gender == MALE)
		belt =	/obj/item/storage/belt/rogue/leather/cloth
		armor = /obj/item/clothing/suit/roguetown/shirt/rags
		shoes = /obj/item/clothing/shoes/roguetown/shortboots
	else
		mask = /obj/item/clothing/mask/rogue/exoticsilkmask
		shirt = /obj/item/clothing/suit/roguetown/shirt/exoticsilkbra
		belt =	/obj/item/storage/belt/rogue/leather/exoticsilkbelt
		shoes = /obj/item/clothing/shoes/roguetown/goldanklets
	if(H.mind)
		H.virginity = TRUE
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/stealing, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/music, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/farming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/fishing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/hunting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/treatment, 1, TRUE)
		H.change_stat("strength", -3)
		H.change_stat("constitution", -2)
		H.change_stat("intelligence", 3)
		H.change_stat("speed", 1)
		H.change_stat("fortune", -1)

	ADD_TRAIT(H, TRAIT_GOODLOVER, TRAIT_GENERIC)
