//Pistols
/obj/item/gun/ballistic/automatic/fallout/pistol
	slowdown = 0.1
	name = "pistol template"
	desc = "should not be here. Bugreport."
	icon = 'ModularFallout/!icons/objects/guns/ballistic.dmi'
	lefthand_file = 'ModularFallout/!icons/onmob/weapons/guns_lefthand.dmi'
	righthand_file = 'ModularFallout/!icons/onmob/weapons/guns_righthand.dmi'
	w_class = WEIGHT_CLASS_NORMAL //How much space it takes in a bag
	weapon_weight = WEAPON_MEDIUM //can only dual wield small pistols
	slot_flags = ITEM_SLOT_BELT
	can_suppress = FALSE
	force = 12 //Pistol whip
	mag_type = /obj/item/ammo_box/magazine/m10mm_adv/simple
	spread = 2
	burst_size = 1
	fire_delay = 4
	semi_auto = TRUE
	can_suppress = TRUE

/obj/item/gun/ballistic/automatic/fallout/pistol/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/fallout/pistol/update_icon_state()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"

/obj/item/gun/ballistic/automatic/fallout/pistol/suppressed/Initialize(mapload)
	. = ..()
	var/obj/item/suppressor/S = new(src)
	install_suppressor(S)



/////////////////
//LIGHT PISTOLS//
/////////////////


//.22 Sport								Keywords: .22, Semi-auto, 16 round magazine, Suppressed
/obj/item/gun/ballistic/automatic/fallout/pistol/pistol22
	name = ".22 pistol"
	desc = "The silenced .22 pistol is a sporting handgun with an integrated silencer."
	icon_state = "silenced22"
	mag_type = /obj/item/ammo_box/magazine/m22
	w_class = WEIGHT_CLASS_TINY
	can_suppress = FALSE
	suppressed = 1


//N99  10mm								Keywords: 10mm, Semi-auto, 12/24 round magazine
/obj/item/gun/ballistic/automatic/fallout/pistol/n99
	name = "10mm pistol"
	desc = "A pre-war large-framed, gas-operated advanced 10mm pistol."
	icon_state = "n99"
	mag_type = /obj/item/ammo_box/magazine/m10mm_adv/simple
	fire_delay = 4
	recoil = 0.05
//	can_automatic = TRUE
	suppressor_x_offset = 29
	suppressor_y_offset = 15

//the Executive							Keywords: UNIQUE, 10mm, Automatic, 12/24 round magazine. Special modifiers: damage +4
/obj/item/gun/ballistic/automatic/fallout/pistol/n99/executive
	name = "the Executive"
	desc = "A modified N99 pistol with an accurate two-round-burst and a blue Vault-Tec finish, a status symbol for some Overseers."
	icon_state = "executive"
	burst_size = 2
	semi_auto = FALSE

//Crusader pistol
/obj/item/gun/ballistic/automatic/fallout/pistol/n99/crusader
	name = "\improper Crusader pistol"
	desc = "A large-framed N99 pistol emblazoned with the colors and insignia of the Brotherhood of Steel. It feels heavy in your hand."
	force = 18
	icon_state = "crusader"


//Type 17								Keywords: 10mm, Semi-auto, 12/24 round magazine. Special modifiers: damage +1, spread +1
/obj/item/gun/ballistic/automatic/fallout/pistol/type17
	name = "Type 17"
	desc = "Chinese military sidearm at the time of the Great War. The ones around are old and worn, but somewhat popular due to the long barrel and rechambered in 10mm after the original ammo ran dry decades ago."
	icon_state = "chinapistol"
	mag_type = /obj/item/ammo_box/magazine/m10mm_adv/simple
	fire_delay = 5
	recoil = 0.1
	spread = 3
	can_suppress = FALSE


//Browning Hi-power						Keywords: 9mm, Semi-auto
/obj/item/gun/ballistic/automatic/fallout/pistol/ninemil
	name = "Browning Hi-power"
	desc = "A mass produced pre-war Browning Hi-power 9mm pistol."
	icon_state = "ninemil"
	mag_type = /obj/item/ammo_box/magazine/m9mmds
	weapon_weight = WEAPON_LIGHT
	w_class = WEIGHT_CLASS_SMALL
	fire_delay = 2.5
	suppressor_x_offset = 30
	suppressor_y_offset = 19

//Maria									Keywords: UNIQUE, 9mm, Semi-auto, 10 round magazine. Special modifiers: fire delay -1, damage +10, penetration +0.2
/obj/item/gun/ballistic/automatic/fallout/pistol/ninemil/maria
	name = "Maria"
	desc = "An ornately-decorated pre-war Browning Hi-power 9mm pistol with pearl grips and a polished nickel finish. The firing mechanism has been upgraded, so for anyone on the receiving end, it must seem like an eighteen-karat run of bad luck."
	icon_state = "maria"
	fire_delay = 2


//Sig Sauer P220						Keywords: 9mm, Semi-auto, 10 round magazine
/obj/item/gun/ballistic/automatic/fallout/pistol/sig
	name = "Sig P220"
	desc = "The P220 Sig Sauer. A Swiss designed pistol that is compact and has an average rate of fire for a pistol."
	icon_state = "sig"
	w_class = WEIGHT_CLASS_SMALL
	weapon_weight = WEAPON_LIGHT
	mag_type = /obj/item/ammo_box/magazine/m9mm
	fire_delay = 3.25
	suppressor_x_offset = 30
	suppressor_y_offset = 20


//Beretta M9FS							Keywords: 9mm, Semi-auto. Special modifiers: spread -1
/obj/item/gun/ballistic/automatic/fallout/pistol/beretta
	name = "Beretta M9FS"
	desc = "One of the more common 9mm pistols, the Beretta is popular due to its reliability, 15 round magazine and good looks."
	icon_state = "beretta"
	mag_type = /obj/item/ammo_box/magazine/m9mmds
	fire_delay = 3.5
	weapon_weight = WEAPON_LIGHT
	spread = 1
	can_suppress = "pistol_suppressor"
	suppressor_x_offset = 30
	suppressor_y_offset = 20

//Beretta M93R							Keywords: 9mm, Automatic, 15 round magazine
/obj/item/gun/ballistic/automatic/fallout/pistol/beretta/automatic
	name = "Beretta M93R"
	desc = "A rare select fire variant of the M93R."
	icon_state = "m93r"
	burst_size = 2
	spread = 9
	recoil = 0.2


//M1911									Keywords: .45 ACP, Semi-auto, 8 round magazine. Special modifiers: damage +1
/obj/item/gun/ballistic/automatic/fallout/pistol/m1911
	name = "M1911"
	desc = "A classic .45 handgun with a small magazine capacity."
	icon_state = "m1911"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/m45
	recoil = 0.15
	suppressor_x_offset = 30
	suppressor_y_offset = 21

//M1911	Custom							Keywords: .45 ACP, Semi-auto, 8 round magazine. Special modifiers: damage +1
/obj/item/gun/ballistic/automatic/fallout/pistol/m1911/custom
	name = "M1911 Custom"
	desc = "A well-maintained stainless-steel frame 1911, with genuine wooden grips."
	icon_state = "m1911_custom"
	recoil = 0.05
	fire_delay = 4


//Mk. 23								Keywords: .45 ACP, Semi-auto, Long barrel (lasersight), 12 round magazine, Flashlight
/obj/item/gun/ballistic/automatic/fallout/pistol/mk23
	name = "Mk. 23"
	desc = "A very tactical pistol chambered in .45 ACP with a built in laser sight and attachment point for a seclite."
	icon_state = "mk23"
	mag_type = /obj/item/ammo_box/magazine/m45exp
	fire_delay = 3.5
	spread = 1
	can_flashlight = TRUE
	gunlight_state = "flight"
	flight_x_offset = 16
	flight_y_offset = 13
	suppressor_x_offset = 28
	suppressor_y_offset = 20



/////////////////
//HEAVY PISTOLS//
/////////////////


//Desert Eagle							Keywords: .44 Magnum, Semi-auto, Long barrel, 8 round magazine, Heavy. Special modifiers: bullet speed +300, damage +1
/obj/item/gun/ballistic/automatic/fallout/pistol/deagle
	name = "Desert Eagle"
	desc = "A robust .44 magnum semi-automatic handgun."
	icon_state = "deagle"
	mag_type = /obj/item/ammo_box/magazine/m44
	fire_delay = 4
	force = 15
	recoil = 0.2
	can_suppress = FALSE

//El Capitan			Keywords: 14mm, Semi-auto, 7 round magazine, Heavy. Special modifiers: damage -2
/obj/item/gun/ballistic/automatic/fallout/pistol/deagle/elcapitan
	name = "El Capitan"
	desc = "The Captain loves his gun, despite some silly gunsmith adding some gas venting to the barrel after his second visit to the surgeon for recoil-related wrist injuries."
	icon_state = "elcapitan"
	mag_type = /obj/item/ammo_box/magazine/m14mm

//Automag			Keywords: .44 Magnum, Semi-auto, Long barrel, 7 rounds, Heavy. Special modifiers: bullet speed +300
/obj/item/gun/ballistic/automatic/fallout/pistol/automag
	name = "Automag"
	desc = "A long-barreled .44 magnum semi-automatic handgun."
	icon_state = "automag"
	mag_type = /obj/item/ammo_box/magazine/automag
	recoil = 0.2
	can_suppress = FALSE


//14mm Pistol		Keywords: 14mm, Semi-auto, 7 rounds, Heavy
/obj/item/gun/ballistic/automatic/fallout/pistol/pistol14
	name = "14mm pistol"
	desc = "A Swiss SIG-Sauer 14mm handgun, powerful but a little inaccurate"
	icon_state = "pistol14"
	mag_type = /obj/item/ammo_box/magazine/m14mm
	force = 15
	fire_delay = 5
	recoil = 0.25
	can_suppress = FALSE

//14mm compact		Keywords: 14mm, Semi-auto, Short barrel, 7 rounds, Heavy
/obj/item/gun/ballistic/automatic/fallout/pistol/pistol14/compact
	name = "compact 14mm pistol"
	desc = "A Swiss SIG-Sauer 14mm handgun, this one is a compact model for concealed carry."
	icon_state = "pistol14_compact"
	w_class = WEIGHT_CLASS_SMALL
	spread = 5

//Little Devil							Keywords: UNIQUE, 14mm, Semi-auto, Short barrel, 7 Rounds, Heavy. Special modifiers: damage +4, penetration +0.05, spread -3
/obj/item/gun/ballistic/automatic/fallout/pistol/pistol14/lildevil
	name= "Little Devil 14mm pistol"
	desc = "A Swiss SIG-Sauer 14mm handgun, this one is a finely tuned custom firearm from the Gunrunners."
	icon_state = "lildev"
	w_class = WEIGHT_CLASS_SMALL
	fire_delay = 4


/////////////////////////////////
// TEMPORARY REMOVE AFTER BETA //
/////////////////////////////////obsolete

/obj/item/gun/ballistic/automatic/fallout/pistol/pistoltesting
	name = "pistol"
	mag_type = /obj/item/ammo_box/magazine/testbullet
