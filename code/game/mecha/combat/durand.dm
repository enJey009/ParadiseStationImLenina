/obj/mecha/combat/durand
	desc = "It's time to light some fires and kick some tires."
	name = "Durand Mk. II"
	icon_state = "durand"
	initial_icon = "durand"
	step_in = 4
	dir_in = 1 //Facing North.
	max_integrity = 400
	deflect_chance = 20
	armor = list(melee = 40, bullet = 35, laser = 15, energy = 10, bomb = 20, bio = 0, rad = 50, fire = 100, acid = 100)
	max_temperature = 30000
	infra_luminosity = 8
	force = 40
	wreckage = /obj/structure/mecha_wreckage/durand

/obj/mecha/combat/durand/GrantActions(mob/living/user, human_occupant = 0)
	..()
	if(!istype(src, /obj/mecha/combat/durand/rover))
		defense_action.Grant(user, src)

/obj/mecha/combat/durand/RemoveActions(mob/living/user, human_occupant = 0)
	..()
	if(!istype(src, /obj/mecha/combat/durand/rover))
		defense_action.Remove(user)

/obj/mecha/combat/durand/loaded/New()
	..()
	var/obj/item/mecha_parts/mecha_equipment/ME = new /obj/item/mecha_parts/mecha_equipment/weapon/energy/laser/heavy
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/missile_rack
	ME.attach(src)

/obj/mecha/combat/durand/old
	desc = "Один из удачных образцов от СССП. За основу был взят Durand, от буржуйской комании Nanotrasen."
	name = "ТУ-802"
	icon_state = "old_durand"
	initial_icon = "old_durand"
	step_in = 4
	dir_in = 1 //Facing North.
	max_integrity = 400
	deflect_chance = 20
	armor = list(melee = 50, bullet = 35, laser = 15, energy = 15, bomb = 20, bio = 0, rad = 25, fire = 100, acid = 100)
	max_temperature = 30000
	infra_luminosity = 8
	force = 40
	wreckage = /obj/structure/mecha_wreckage/durand/old

/obj/mecha/combat/durand/rover
	desc = "Combat exosuit, developed by syndicate from the Durand Mk. II by scraping unnecessary things, and adding some of their tech. Much more protected from laser and energy weapons, less so from bullets."
	name = "Rover"
	icon_state = "darkdurand"
	initial_icon = "darkdurand"
	step_in = 4
	dir_in = 1 //Facing North.
	max_integrity = 400
	deflect_chance = 20
	armor = list(melee = 30, bullet = 15, laser = 50, energy = 50, bomb = 20, bio = 0, rad = 50, fire = 100, acid = 100)
	max_temperature = 30000
	infra_luminosity = 8
	force = 40
	wreckage = /obj/structure/mecha_wreckage/durand/rover
	wall_type = /obj/effect/forcefield/mecha/syndicate //energywall icon_state
	large_wall = TRUE

/obj/mecha/combat/durand/rover/GrantActions(mob/living/user, human_occupant = 0)
	..()
	thrusters_action.Grant(user, src)
	energywall_action.Grant(user, src)

/obj/mecha/combat/durand/rover/RemoveActions(mob/living/user, human_occupant = 0)
	..()
	thrusters_action.Remove(user)
	energywall_action.Remove(user)

/obj/mecha/combat/durand/rover/loaded/New()
	..()
	var/obj/item/mecha_parts/mecha_equipment/ME = new /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/lmg
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/tesla_energy_relay
	ME.attach(src)
	ME = new /obj/item/mecha_parts/mecha_equipment/antiproj_armor_booster
	ME.attach(src)
