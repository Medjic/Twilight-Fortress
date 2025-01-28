GLOBAL_LIST_EMPTY(loadout_items)

/datum/loadout_item
	var/name = "Parent loadout datum"
	var/desc
	var/path


//HATS
/datum/loadout_item/shalal
	name = "Keffiyeh"
	path = /obj/item/clothing/head/roguetown/roguehood/shalal

/datum/loadout_item/strawhat
	name = "Straw Hat"
	path = /obj/item/clothing/head/roguetown/strawhat

/datum/loadout_item/grenzelhofthat
	name = "Grenzelhoft hat"
	path = /obj/item/clothing/head/roguetown/grenzelhofthat

/datum/loadout_item/archercap
	name = "Archer cap"
	path = /obj/item/clothing/head/roguetown/archercap

/datum/loadout_item/bardhat
	name = "Bard Hat"
	path = /obj/item/clothing/head/roguetown/bardhat

/datum/loadout_item/fancyhat
	name = "Fancy Hat"
	path = /obj/item/clothing/head/roguetown/fancyhat

/datum/loadout_item/headband
	name = "Headband"
	path = /obj/item/clothing/head/roguetown/headband

//CLOAKS
/datum/loadout_item/tabard
	name = "Tabard"
	path = /obj/item/clothing/cloak/tabard

/datum/loadout_item/captain
	name = "captain's cape"
	path = /obj/item/clothing/cloak/captain

/datum/loadout_item/surcoat
	name = "Surcoat"
	path = /obj/item/clothing/cloak/stabard

/datum/loadout_item/jupon
	name = "Jupon"
	path = /obj/item/clothing/cloak/stabard/surcoat

/datum/loadout_item/cape
	name = "Cape"
	path = /obj/item/clothing/cloak/cape

/datum/loadout_item/halfcloak
	name = "Полуплащ"
	path = /obj/item/clothing/cloak/half

//RINGS 
/datum/loadout_item/copperring
	name = "Медное кольцо"
	path = /obj/item/clothing/ring/copper

//SHOES
/datum/loadout_item/darkboots
	name = "Dark Boots"
	path = /obj/item/clothing/shoes/roguetown/armor

/datum/loadout_item/shortboots
	name = "Short Boots"
	path = /obj/item/clothing/shoes/roguetown/shortboots

/datum/loadout_item/ridingboots
	name = "Riding Boots"
	path = /obj/item/clothing/shoes/roguetown/ridingboots

//SHIRTS
/datum/loadout_item/robe
	name = "Robe"
	path = /obj/item/clothing/suit/roguetown/shirt/robe

/datum/loadout_item/formalsilks
	name = "Официальная рубашка"
	path = /obj/item/clothing/suit/roguetown/shirt/undershirt/puritan

/datum/loadout_item/tunic
	name = "Tunic"
	path = /obj/item/clothing/suit/roguetown/shirt/tunic

/datum/loadout_item/dress
	name = "Dress"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/gen

/datum/loadout_item/nobledress
	name = "noble dress"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/nobledress

/datum/loadout_item/velvetdress
	name = "velvet dress"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/velvetdress

/datum/loadout_item/bardress
	name = "Bar Dress"
	path = /obj/item/clothing/suit/roguetown/shirt/dress

/datum/loadout_item/chemise
	name = "Chemise"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/silkdress

/datum/loadout_item/sexydress
	name = "Sexy Dress"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/gen/sexy

/datum/loadout_item/straplessdress
	name = "Платье без бретелек"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/gen/strapless

/datum/loadout_item/battleskirt
	name = "Battle Skirt"
	path = /obj/item/clothing/cloak/fauld/battleskirt

/datum/loadout_item/faulds
	name = "Faulds"
	path = /obj/item/clothing/cloak/fauld

/datum/loadout_item/leatherbikini
	name = "Leather Bikini"
	path = /obj/item/clothing/suit/roguetown/armor/leather/bikini

/datum/loadout_item/fencergambeneson
	name = "fencer gambeson"
	path = /obj/item/clothing/suit/roguetown/armor/gambeson/otavan


//ACCESSORIES
/datum/loadout_item/stockings
	name = "Stockings"
	path = /obj/item/clothing/under/roguetown/tights/stockings

/datum/loadout_item/silkstockings
	name = "Silk Stockings"
	path = /obj/item/clothing/under/roguetown/tights/stockings/silk

/datum/loadout_item/fishnet
	name = "Fishnet Stockings"
	path = /obj/item/clothing/under/roguetown/tights/stockings/fishnet

/datum/loadout_item/dwarvenmusicbox
	name = "dwarven music box"
	path = /obj/item/dmusicbox

// Collars
/datum/loadout_item/leathercollar
	name = "leather collar"
	path = /obj/item/clothing/neck/roguetown/collar/leather

/datum/loadout_item/catbellcollar
	name = "jingly leather collar(cat)"
	path = /obj/item/clothing/neck/roguetown/collar/leather/bell

/datum/loadout_item/cowbellcollar
	name = "jingly leather collar(cow)"
	path = /obj/item/clothing/neck/roguetown/collar/leather/bell/cow

/datum/loadout_item/cowbellcollar
	name = "jingly leather collar(cow)"
	path = /obj/item/clothing/neck/roguetown/collar/leather/bell/cow

/datum/loadout_item/fencycollar
	name = "Fencer neckguar"
	path = /obj/item/clothing/neck/roguetown/fencerguard

 //Masks

/datum/loadout_item/naledimask
	name = "war scholar's mask"
	path = /obj/item/clothing/mask/rogue/lordmask/naledi
/*
/datum/loadout_item/pigmask
	name = "pig mask"
	path = /obj/item/clothing/mask/rogue/pig

/datum/loadout_item/pigface
	name = "pig face"
	path = /obj/item/clothing/mask/rogue/pig/cursed

/datum/loadout_item/ratmask
	name = "rat mask"
	path = /obj/item/clothing/mask/rogue/rat

/datum/loadout_item/foxmask
	name = "fox mask"
	path = /obj/item/clothing/mask/rogue/rat/fox

/datum/loadout_item/beemask
	name = "bee mask"
	path = /obj/item/clothing/mask/rogue/rat/bee

/datum/loadout_item/bearmask
	name = "bear face"
	path = /obj/item/clothing/mask/rogue/rat/bear

/datum/loadout_item/batmask
	name = "bat mask"
	path = /obj/item/clothing/mask/rogue/rat/bat

/datum/loadout_item/ravenmask
	name = "raven mask"
	path = /obj/item/clothing/mask/rogue/rat/raven

/datum/loadout_item/jackalmask
	name = "jackal mask"
	path = /obj/item/clothing/mask/rogue/rat/jackal

/datum/loadout_item/tribalmask
	name = "tribal face"
	path = /obj/item/clothing/mask/rogue/rat/tribal
*/

