//All the items in this folder and its subdirectories are licensed under a proprietary agreement between client: [Vladmar] and artist: [SayonaraEcho].

//Redistribution, reproduction, or modification of these assets is prohibited without express permission from both licensors. 
//These assets are for use solely within this project and may not be extracted or repurposed for other projects or commercial use.

/obj/item/rogueweapon/battle/ono
	slot_flags = ITEM_SLOT_HIP
	force = 15
	force_wielded = 25
	possible_item_intents = list(/datum/intent/axe/cut)
	name = "нагай оно"
	desc = "Боевой топор с более длинной рукоятью и коротким клинком. Уменьшенный вес и \
	меньшая площадь поражения позволяют использовать его против доспехов, а более длинная рукоять облегчает парирование."
	icon_state = "ono"
	max_blade_int = 500
	smeltresult = /obj/item/ingot/steel
	gripped_intents = list(/datum/intent/axe/cut,/datum/intent/axe/battleaxe/chop/ono)
	parrysound = list('sound/combat/parry/wood/parrywood (1).ogg', 'sound/combat/parry/wood/parrywood (2).ogg', 'sound/combat/parry/wood/parrywood (3).ogg')
	swingsound = BLADEWOOSH_MED
	associated_skill = /datum/skill/combat/axes
	minstr = 8
	icon = 'modular_twilight/icons/roguetown/weapons/32.dmi'
	max_blade_int = 200
	max_integrity = 300
	wdefense = 6

/obj/item/rogueweapon/battle/getonmobprop(tag)
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -12,"sy" = -10,"nx" = 12,"ny" = -10,"wx" = -8,"wy" = -7,"ex" = 3,"ey" = -9,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 90,"sturn" = -90,"wturn" = -90,"eturn" = 90,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.6,"sx" = -12,"sy" = 3,"nx" = 12,"ny" = 2,"wx" = -8,"wy" = 2,"ex" = 4,"ey" = 2,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0)
	return ..()

/obj/item/rogueweapon/thrown/ono
	slot_flags = ITEM_SLOT_HIP
	force = 15
	possible_item_intents = list(/datum/intent/axe/cut, /datum/intent/axe/chop) //Added chop because the throwing Ono is still suitable for woodcutting. It's a hatchet.
	name = "нагэ оно"
	desc = "Хорошо сбалансированный топор с короткой рукоятью, предназначенный для метания. \
	Традиционно используется в качестве охотничьего оружия как альтернатива стрельбе из лука, поскольку древесина для луков на Туманных островах в дефиците."
	icon = 'modular_twilight/icons/roguetown/weapons/32.dmi'
	icon_state = "throwing_ono"
	max_blade_int = 500
	smeltresult = /obj/item/ash
	parrysound = list('sound/combat/parry/wood/parrywood (1).ogg', 'sound/combat/parry/wood/parrywood (2).ogg', 'sound/combat/parry/wood/parrywood (3).ogg')
	swingsound = BLADEWOOSH_MED
	wlength = WLENGTH_SHORT
	associated_skill = /datum/skill/combat/axes
	minstr = 6
	max_blade_int = 200
	max_integrity = 300
	wdefense = 3
	throwforce = 40
	embedding = list("embedded_pain_multiplier" = 3, "embed_chance" = 20, "embedded_fall_chance" = 60)

/obj/item/rogueweapon/woodcut/changfu
	name = "железный чанфу"
	desc = "Инструмент справедливости, трудолюбия и разрушения - все в одном."
	icon_state = "changfu"
	icon = 'modular_twilight/icons/roguetown/weapons/32.dmi'
	wdefense = 4 //Battle designed.

/datum/intent/axe/battleaxe/chop/ono //because actual battle axes don't have stupid large blades.
	name = "chop"
	icon_state = "inchop"
	blade_class = BCLASS_CHOP
	attack_verb = list("chops", "hacks")
	animname = "chop"
	hitsound = list('sound/combat/hits/bladed/genchop (1).ogg', 'sound/combat/hits/bladed/genchop (2).ogg', 'sound/combat/hits/bladed/genchop (3).ogg')
	penfactor = 70
	swingdelay = 1
	misscost = 10

/obj/item/rogueweapon/shield/tower/abyssaltower
	name = "abyssal tower"
	icon_state = "abyssaltower"
	icon = 'modular_twilight/icons/roguetown/weapons/32.dmi'
