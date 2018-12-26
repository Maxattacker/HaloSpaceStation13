/datum/job/ship_crew_civ
	title = "Civilian Ship Crew"
	total_positions = 7
	spawn_positions = 7
	outfit_type = /decl/hierarchy/outfit/job/civ_crewmember
	selection_color = "#000000"
	spawnpoint_override = "Civilian Ship Crew"

/datum/job/ship_cap_civ
	title = "Civilian Ship Captain"
	total_positions = 2
	spawn_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/civ_captain
	selection_color = "#000000"
	spawnpoint_override = "Civ Ship Cap Crew"

/datum/job/ship_cap_civ/equip(var/mob/m)
	. = ..()
	for(var/turf/T in range(2,m)) //Removing our spawn loc from the potential spawnpos's, so a ship doesn't get 2 captains.
		for(var/obj/effect/landmark/start/ship_cap_civ/spawnpos in T.contents)
			GLOB.ship_cap_civ_spawns -= spawnpos.loc

/datum/job/ship_crew_medic
	title = "Medical Ship Crew"
	total_positions = 5
	spawn_positions = 5
	outfit_type = /decl/hierarchy/outfit/job/civ_crewmember
	selection_color = "#000000"
	spawnpoint_override = "Medical Ship Crew"

/datum/job/ship_cap_medic
	title = "Medical Ship Captain"
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/civ_captain
	selection_color = "#000000"
	spawnpoint_override = "Medical Ship Cap Crew"



/datum/job/ship_crew_innie
	title = "Insurrectionist Ship Crew"
	total_positions = 6
	spawn_positions = 6
	access = list(632)
	outfit_type = /decl/hierarchy/outfit/job/innie_crewmember
	selection_color = "#ff0000"
	spawnpoint_override = "Innie Crew"

/datum/job/ship_cap_innie
	title = "Insurrectionist Ship Captain"
	total_positions = 1
	spawn_positions = 1
	access = list(632,633)
	outfit_type = /decl/hierarchy/outfit/job/innie_crew_captain
	selection_color = "#ff0000"
	spawnpoint_override = "Innie Crew"


#define ALL_SHIP_JOBS list(/datum/job/UNSC_ship/commander,/datum/job/UNSC_ship/exo,/datum/job/UNSC_ship/cag,\
/datum/job/UNSC_ship/bridge,/datum/job/UNSC_ship/mechanic_chief,/datum/job/UNSC_ship/mechanic,\
/datum/job/UNSC_ship/logistics_chief,/datum/job/UNSC_ship/logistics,/datum/job/UNSC_ship/marine_co,/datum/job/UNSC_ship/marine_xo,\
/datum/job/UNSC_ship/marine_sl,/datum/job/UNSC_ship/weapons,/datum/job/UNSC_ship/marine,/datum/job/UNSC_ship/odst,/datum/job/UNSC_ship/odsto,/datum/job/UNSC_ship/marine/driver,\
/datum/job/UNSC_ship/medical_chief,/datum/job/UNSC_ship/medical,/datum/job/UNSC_ship/security_chief,/datum/job/UNSC_ship/security,\
/datum/job/UNSC_ship/ops_chief,/datum/job/UNSC_ship/ops,/datum/job/UNSC_ship/cmdr_wing,/datum/job/UNSC_ship/cmdr_sqr,\
/datum/job/UNSC_ship/pilot,/datum/job/UNSC_ship/ai,/datum/job/UNSC_ship/gunnery_chief,/datum/job/UNSC_ship/gunnery,\
/datum/job/UNSC_ship/technician_chief,/datum/job/UNSC_ship/technician)

#include "maps/UNSC_Heaven_Above/jobs/command.dm"
#include "maps/UNSC_Heaven_Above/jobs/flight.dm"
#include "maps/UNSC_Heaven_Above/jobs/logistics.dm"
#include "maps/UNSC_Heaven_Above/jobs/marines.dm"
#include "maps/UNSC_Heaven_Above/jobs/medical.dm"
#include "maps/UNSC_Heaven_Above/jobs/naval_security.dm"
#include "maps/UNSC_Heaven_Above/jobs/operations.dm"
#include "maps/UNSC_Heaven_Above/jobs/pilot.dm"
#include "maps/UNSC_Heaven_Above/jobs/ship_ai.dm"
#include "maps/UNSC_Heaven_Above/jobs/tactical.dm"
#include "maps/UNSC_Heaven_Above/jobs/technical.dm"


/datum/map/first_contact
	allowed_jobs = list(/datum/job/UNSC_ship/commander,/datum/job/UNSC_ship/exo,/datum/job/UNSC_ship/cag,/datum/job/UNSC_ship/bridge,\
	/datum/job/UNSC_ship/mechanic_chief,/datum/job/UNSC_ship/mechanic,/datum/job/UNSC_ship/logistics_chief,/datum/job/UNSC_ship/logistics,\
	/datum/job/UNSC_ship/marine_co,/datum/job/UNSC_ship/marine_xo,/datum/job/UNSC_ship/marine_sl,/datum/job/UNSC_ship/weapons,/datum/job/UNSC_ship/marine,\
	/*/datum/job/UNSC_ship/odst,/datum/job/UNSC_ship/odsto,*//datum/job/HeavenAbove_ODST,/datum/job/HeavenAbove_ODSTO,/datum/job/UNSC_ship/marine/driver,\
	/datum/job/UNSC_ship/medical_chief,/datum/job/UNSC_ship/medical,/datum/job/UNSC_ship/security_chief,/datum/job/UNSC_ship/security,/datum/job/UNSC_ship/ops_chief,\
	/datum/job/UNSC_ship/ops,/datum/job/UNSC_ship/cmdr_wing,/datum/job/UNSC_ship/cmdr_sqr,/datum/job/UNSC_ship/pilot,/datum/job/UNSC_ship/ai,/datum/job/UNSC_ship/gunnery_chief,\
	/datum/job/UNSC_ship/gunnery,/datum/job/UNSC_ship/technician_chief,/datum/job/UNSC_ship/technician,/datum/job/researchdirector,/datum/job/researcher,/datum/job/ONIGUARD,\
	/datum/job/ONIGUARDS,/datum/job/COMMO,/datum/job/IGUARD,/datum/job/ship_crew_civ,/datum/job/ship_cap_civ,/datum/job/ship_crew_medic,/datum/job/ship_cap_medic,\
	/datum/job/Emsville_Colonist,/datum/job/Emsville_Marshall,/datum/job/Asteroidinnieleader,/datum/job/Asteroidinnie,/datum/job/ship_crew_innie,\
	/datum/job/ship_cap_innie,/datum/job/covenant/sangheili_minor,/datum/job/covenant/sangheili_major,/datum/job/covenant/sangheili_ultra,/datum/job/covenant/kigyarminor,\
	/datum/job/covenant/kigyarmajor,/datum/job/covenant/kigyarcorvette/captain,/datum/job/covenant/unggoy_minor,/datum/job/covenant/unggoy_major,/datum/job/unscaegis_co,\
	/datum/job/unscaegis_ship_crew,/datum/job/aegisODSTONI,/datum/job/aegisODSTOONI,/datum/job/covenant/skirmminor,/datum/job/covenant/skirmmajor,/datum/job/covenant/skirmmurmillo,\
	/datum/job/URF_commando,/datum/job/URF_commando_officer)
	allowed_spawns = list("UNSC Frigate","UNSC Commanding Officer Spawn","UNSC Executive Officer Spawn","UNSC Bridge Officer Spawn","UNSC Commander Air Group Spawn",\
	"UNSC Operations Supervisor Spawn","UNSC Operations Specialist Spawn","UNSC Heaven Above ODST Spawn","UNSC Heaven Above ODST Officer Spawn","Innie Crew","Civilian Ship Crew","Civ Ship Cap Crew",\
	"Medical Ship Crew","Medical Ship Cap Crew","Emsville Spawn","Emsville Spawn Marshall","Research Facility Spawn","Research Facility Director Spawn",\
	"Research Facility Security Spawn","Research Facility Comms Spawn","Depot Guard Spawn","Listening Post Spawn","Listening Post Commander Spawn","Sangheili Corvette Spawn",\
	"Kig-Yar Corvette Spawn","Unggoy Corvette Spawn","UNSC Aegis Ship Crew Spawn","UNSC Aegis ODST Spawn","UNSC Aegis ODST Officer Spawn","Commando Spawn","Commando Officer Spawn",)

	species_to_job_whitelist = list(\
		/datum/species/kig_yar = list(/datum/job/covenant/kigyarminor,/datum/job/covenant/kigyarmajor,/datum/job/covenant/kigyarcorvette/captain),\
		/datum/species/unggoy = list(/datum/job/covenant/unggoy_minor,/datum/job/covenant/unggoy_major),\
		/datum/species/sangheili = list(/datum/job/covenant/sangheili_minor,/datum/job/covenant/sangheili_major,/datum/job/covenant/sangheili_ultra),\
		/datum/species/kig_yar_skirmisher = list(/datum/job/covenant/skirmminor,/datum/job/covenant/skirmmajor,/datum/job/covenant/skirmmurmillo,/datum/job/covenant/skirmcommando),\
		/datum/species/spartan = list(),\
		/datum/species/brutes = list(),\
		/datum/species/sanshyuum = list()\
		)