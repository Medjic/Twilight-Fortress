/datum/job/roguetown/physician
	title = "Court Physician"
	flag = PHYSICIAN
	department_flag = NOBLEMEN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_races = RACES_TOLERATED_UP
	allowed_sexes = list(MALE, FEMALE)
	display_order = JDO_PHYSICIAN
	tutorial = "Вы родились в хорошем достатке, но с плохим здоровьем. \
		Возможно, в другой жизни вы стали бы могущественным магом, мудрым архивариусом или проницательным управленцем,\
		но болезнь отняла у вас молодые годы. \
		В отчаянии вы последовали пути Пестры и смогли излечиться. \
		Теперь вы служите при дворе герцога, следя за здоровьем обитателей замка."
	outfit = /datum/outfit/job/roguetown/physician
	whitelist_req = TRUE

	give_bank_account = 47
	min_pq = 2
	max_pq = null

	cmode_music = 'sound/music/combat_physician.ogg'

/datum/outfit/job/roguetown/physician
	name = "Physician"
	jobtype = /datum/job/roguetown/physician

/datum/job/roguetown/physician/after_spawn(mob/living/L, mob/M, latejoin = TRUE)
	..()
	if(ishuman(L))
		var/mob/living/carbon/human/H = L
		var/index = findtext(H.real_name, " ")
		if(index)
			index = copytext(H.real_name, 1,index)
		if(!index)
			index = H.real_name
		var/prev_real_name = H.real_name
		var/prev_name = H.name
		var/honorary = "Lord"
		if(H.gender == FEMALE)
			honorary = "Lady"
		H.real_name = "[honorary] [prev_real_name]"
		H.name = "[honorary] [prev_name]"

/datum/outfit/job/roguetown/physician/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/physician
	mask = /obj/item/clothing/mask/rogue/pestra/court
	neck = /obj/item/clothing/neck/roguetown/psicross/pestra
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/physician
	shirt = /obj/item/clothing/suit/roguetown/shirt/tunic/red
	gloves = /obj/item/clothing/gloves/roguetown/leather/angle
	pants = /obj/item/clothing/under/roguetown/trou/leather/mourning
	shoes = /obj/item/clothing/shoes/roguetown/armor
	belt = /obj/item/storage/belt/rogue/leather/black
	beltl = /obj/item/reagent_containers/glass/bottle/waterskin
	beltr = /obj/item/storage/belt/rogue/pouch/coins/mid
	wrists = /obj/item/storage/keyring/physician
	id = /obj/item/clothing/ring/quartzs
	r_hand = /obj/item/rogueweapon/woodstaff
	backl = /obj/item/storage/backpack/rogue/backpack
	backr = /obj/item/bedroll // field surgery
	backpack_contents = list(/obj/item/storage/fancy/skit = 1, /obj/item/storage/fancy/ifak = 1, /obj/item/reagent_containers/glass/alembic = 1, /obj/item/thermometer = 1, /obj/item/rope = 1, /obj/item/natural/cloth = 1) // tie and gag zombies
	ADD_TRAIT(H, TRAIT_NOBLE, "[type]")
	ADD_TRAIT(H, TRAIT_EMPATH, "[type]")
	ADD_TRAIT(H, TRAIT_NOSTINK, "[type]")
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/farming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/treatment, 6, TRUE)
		H.mind.AddSpell(new SPELL_DIAGNOSE_SECULAR)
		H.mind.AddSpell(new SPELL_DOCHEAL)
		H.mind.AddSpell(new SPELL_STABLE)
		H.mind.AddSpell(new SPELL_PURGE)
		H.mind.AddSpell(new SPELL_DEBRIDE)
		H.mind.AddSpell(new SPELL_CPR)
		H.change_stat("strength", -1)
		H.change_stat("constitution", -1)
		H.change_stat("intelligence", 3)
		H.change_stat("fortune", 1)
		H.change_stat("endurance", 1)
		if(H.age == AGE_OLD)
			H.change_stat("speed", -1)
			H.change_stat("intelligence", 1)
			H.change_stat("perception", 1)
