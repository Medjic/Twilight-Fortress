/mob/living/carbon/human/species/axian
	race = /datum/species/axian

/datum/species/axian
	name = "Аксиан"
	id = "axian"
	desc = "<b>Аксиан</b><br>\
	Аксиане - гордый, похожий на акулу народ, наследие которого основано на морской торговле, уклонении от налогов и пиратстве. \
	Хотя они известны тем, что сильны духом и поощряют активную коммерческую деятельность, они приобрели дурную славу за то,\
	что они испытывают сильное отвращение к дворянству и налогам, что делает их главной мишенью для дискриминации и подозрительности."
	expanded_desc =	"Они часто становятся козлами отпущения за преступления, их часто обвиняют в любых проявлениях инакомыслия, \
	и они часто становятся первыми, кого преследуют за любые мятежные действия, происходящие в регионе. \
	Кроме того, их часто обвиняют в том, что они маттиоситы, а их имущество нередко насильно конфискуют беспринципные интриганы.  \
	<br><br> \
	Благодаря их склонности к торговле, путешествиям и изгнанию из различных королевств, их можно встретить по всему миру, часто они видят места, \
	о которых большинство даже не могло мечтать. Они свысока смотрят на тех, кого считают «оседлыми», \
	и нередко за свою жизнь сами переезжают с места на место, особенно если это оказывается наиболее выгодным. \
	Однако многие аксиане часто замечают, что их рассудок уходит из-под ног, так как они иногда застревают на одном месте. \
	<br><br> \
	Когда-то аксианцы были объединены под властью Айноанской Республики, но в последнее время они стали разрозненными. \
	Айноа была доминирующей морской державой, контролирующей ключевые торговые товары и маршруты, которые соперничали с маршрутами Гизы и Зибантии. \
	Однако разрушение работорговли после Великих ящеролюдских восстаний повергло республику в экономический и моральный хаос, а многие лидеры были обвинены в поклонении Маттиосу. \
	Эти беспорядки в конечном итоге спровоцировали жестокий Айноанский крестовый поход, в результате которого республика распалась на несколько разрозненных государств,\
	возглавляемых торговыми военачальниками и так называемыми пиратскими королями. Однако вместо того, чтобы пытаться вернуть былую славу, \
	аксианцы принимают свой новый образ жизни и процветают в хаосе."
	species_traits = list(EYECOLOR,LIPS,STUBBLE,MUTCOLORS)
	species_traits = list(EYECOLOR,LIPS,STUBBLE,MUTCOLORS)
	inherent_traits = list(TRAIT_NOMOBSWAP, TRAIT_WATERBREATHING)
	possible_ages = ALL_AGES_LIST
	limbs_icon_m = 'icons/roguetown/mob/bodies/m/mt.dmi'
	limbs_icon_f = 'icons/roguetown/mob/bodies/f/fm.dmi'
	dam_icon = 'icons/roguetown/mob/bodies/dam/dam_male.dmi'
	dam_icon_f = 'icons/roguetown/mob/bodies/dam/dam_female.dmi'
	soundpack_m = /datum/voicepack/male
	soundpack_f = /datum/voicepack/female
	offset_features = list(
		OFFSET_ID = list(0,1), OFFSET_GLOVES = list(0,1), OFFSET_WRISTS = list(0,1),\
		OFFSET_CLOAK = list(0,1), OFFSET_FACEMASK = list(0,1), OFFSET_HEAD = list(0,1), \
		OFFSET_FACE = list(0,1), OFFSET_BELT = list(0,1), OFFSET_BACK = list(0,1), \
		OFFSET_NECK = list(0,1), OFFSET_MOUTH = list(0,1), OFFSET_PANTS = list(0,0), \
		OFFSET_SHIRT = list(0,1), OFFSET_ARMOR = list(0,1), OFFSET_HANDS = list(0,1), OFFSET_UNDIES = list(0,1), \
		OFFSET_ID_F = list(0,-1), OFFSET_GLOVES_F = list(0,0), OFFSET_WRISTS_F = list(0,0), OFFSET_HANDS_F = list(0,0), \
		OFFSET_CLOAK_F = list(0,0), OFFSET_FACEMASK_F = list(0,-1), OFFSET_HEAD_F = list(0,-1), \
		OFFSET_FACE_F = list(0,-1), OFFSET_BELT_F = list(0,0), OFFSET_BACK_F = list(0,-1), \
		OFFSET_NECK_F = list(0,-1), OFFSET_MOUTH_F = list(0,-1), OFFSET_PANTS_F = list(0,0), \
		OFFSET_SHIRT_F = list(0,0), OFFSET_ARMOR_F = list(0,0), OFFSET_UNDIES_F = list(0,0), \
		)
	specstats = list(
		"strength" = 0,
		"perception" = 0,
		"intelligence" = -1,
		"constitution" = 0,
		"endurance" = 1,
		"speed" = 1,
		"fortune" = 0
		)
	enflamed_icon = "widefire"
	attack_verb = "slash"
	attack_sound = 'sound/blank.ogg'
	miss_sound = 'sound/blank.ogg'
	organs = list(
		ORGAN_SLOT_BRAIN = /obj/item/organ/brain,
		ORGAN_SLOT_HEART = /obj/item/organ/heart,
		ORGAN_SLOT_LUNGS = /obj/item/organ/lungs,
		ORGAN_SLOT_EYES = /obj/item/organ/eyes,
		ORGAN_SLOT_EARS = /obj/item/organ/ears/akula,
		ORGAN_SLOT_TONGUE = /obj/item/organ/tongue,
		ORGAN_SLOT_LIVER = /obj/item/organ/liver,
		ORGAN_SLOT_STOMACH = /obj/item/organ/stomach,
		ORGAN_SLOT_APPENDIX = /obj/item/organ/appendix,
		//ORGAN_SLOT_TAIL = /obj/item/organ/tail/akula, //Commenting out due to use of customizer organs.
		ORGAN_SLOT_SNOUT = /obj/item/organ/snout/akula,
		ORGAN_SLOT_TESTICLES = /obj/item/organ/testicles,
		ORGAN_SLOT_PENIS = /obj/item/organ/penis/tapered,
		ORGAN_SLOT_BREASTS = /obj/item/organ/breasts,
		ORGAN_SLOT_VAGINA = /obj/item/organ/vagina,
		)
	bodypart_features = list(
		/datum/bodypart_feature/hair/head,
		/datum/bodypart_feature/hair/facial,
	)
	customizers = list(
		/datum/customizer/organ/eyes/humanoid,
		/datum/customizer/bodypart_feature/hair/head/humanoid,
		/datum/customizer/bodypart_feature/hair/facial/humanoid,
		/datum/customizer/bodypart_feature/accessory,
		/datum/customizer/bodypart_feature/face_detail,
		/datum/customizer/organ/snout/akula,
		/datum/customizer/organ/tail/axian,
		/datum/customizer/organ/ears/axian,
		/datum/customizer/organ/testicles/anthro,
		/datum/customizer/organ/penis/lizard,
		/datum/customizer/organ/breasts/human,
		/datum/customizer/organ/vagina/human_anthro,
		)
	body_marking_sets = list(
		/datum/body_marking_set/none,
		/datum/body_marking_set/belly,
	)
	body_markings = list(
		/datum/body_marking/flushed_cheeks,
		/datum/body_marking/eyeliner,
		/datum/body_marking/belly,
		/datum/body_marking/bellyslim,
		/datum/body_marking/butt,
		/datum/body_marking/tonage,
		/datum/body_marking/tiger/dark,
	)
	descriptor_choices = list(
		/datum/descriptor_choice/height,
		/datum/descriptor_choice/body,
		/datum/descriptor_choice/stature,
		/datum/descriptor_choice/face,
		/datum/descriptor_choice/face_exp,
		/datum/descriptor_choice/scales,
		/datum/descriptor_choice/voice,
		/datum/descriptor_choice/prominent_one,
		/datum/descriptor_choice/prominent_two,
		/datum/descriptor_choice/prominent_three,
		/datum/descriptor_choice/prominent_four,
	)

/datum/species/axian/random_name(gender,unique,lastname)
	var/randname
	if(gender == MALE)
		randname = pick(world.file2list("strings/names/roguetown/axianmale.txt"))
	if(gender == FEMALE)
		randname = pick(world.file2list("strings/names/roguetown/axianfemale.txt"))
	if(prob(33))
		//Prefix
		var/prefix = pick(world.file2list("strings/names/roguetown/axianprefix.txt"))
		randname = "[prefix] [randname]"
	else
		//Suffix
		var/suffix = pick(world.file2list("strings/names/roguetown/axiansuffix.txt"))
		randname = "[randname] [suffix]"
	return randname

/datum/species/axian/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	..()
	RegisterSignal(C, COMSIG_MOB_SAY, PROC_REF(handle_speech))

/datum/species/axian/on_species_loss(mob/living/carbon/C)
	. = ..()
	UnregisterSignal(C, COMSIG_MOB_SAY)

/datum/species/axian/check_roundstart_eligible()
	return TRUE

/datum/species/axian/qualifies_for_rank(rank, list/features)
	return TRUE

/datum/species/axian/get_random_body_markings(list/passed_features)
	return assemble_body_markings_from_set(GLOB.body_marking_sets_by_type[/datum/body_marking_set/belly], passed_features, src)

/datum/species/axian/get_random_features()
	var/list/returned = MANDATORY_FEATURE_LIST
	var/main_color
	var/second_color
	var/random = rand(1,5)
	//Choose from a variety of sharkish colors, with a whiter secondary and tertiary
	switch(random)
		if(1)
			main_color = "668899"
			second_color = "BBCCDD"
		if(2)
			main_color = "334455"
			second_color = "DDDDEE"
		if(3)
			main_color = "445566"
			second_color = "DDDDEE"
		if(4)
			main_color = "666655"
			second_color = "DDDDEE"
		if(5)
			main_color = "444444"
			second_color = "DDDDEE"
	returned["mcolor"] = main_color
	returned["mcolor2"] = second_color
	returned["mcolor3"] = second_color
	return returned

/datum/species/axian/random_name(gender,unique,lastname)
	var/randname
	if(gender == MALE)
		randname = pick(world.file2list("strings/names/roguetown/axianmale.txt"))
	if(gender == FEMALE)
		randname = pick(world.file2list("strings/names/roguetown/axianfemale.txt"))
	if(prob(33))
		//Prefix
		var/prefix = pick(world.file2list("strings/names/roguetown/axianprefix.txt"))
		randname = "[prefix] [randname]"
	else
		//Suffix
		var/suffix = pick(world.file2list("strings/names/roguetown/axiansuffix.txt"))
		randname = "[randname] [suffix]"
	return randname
