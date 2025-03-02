
/datum/job/vamp/trujah
	title = "Antique Worker"
	faction = "Vampire"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Traditions?"
	selection_color = "#df7058"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	outfit = /datum/outfit/job/trujah
	antag_rep = 7
	paycheck = PAYCHECK_ASSISTANT // Get a job. Job reassignment changes your paycheck now. Get over it.

	access = list(ACCESS_MAINT_TUNNELS)
	liver_traits = list(TRAIT_GREYTIDE_METABOLISM)

	paycheck_department = ACCOUNT_CIV
	display_order = JOB_DISPLAY_ORDER_TRUJAH

	allowed_species = list("Vampire")

	v_duty = "Follow the traditions of the Camarilla. Obey the Prince and their authority. The city belongs to him. Aligning yourself with your clan members would be of benefit."
	duty = "You serve the True Blackhand! Operating out of the antique shop, you engage in extremely subtle political moves against the local sects. Good luck, Child of Ilyes."
	minimal_masquerade = 0
	allowed_bloodlines = list("True Brujah")

/datum/outfit/job/trujah
	name = "Antique Shop Worker"
	jobtype = /datum/job/vamp/trujah
	l_pocket = /obj/item/vamp/phone
	id = /obj/item/cockclock

/datum/outfit/job/trujah/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.clane)
		if(H.gender == MALE)
			shoes = /obj/item/clothing/shoes/vampire
			if(H.clane.male_clothes)
				uniform = H.clane.male_clothes
		else
			shoes = /obj/item/clothing/shoes/vampire/heels
			if(H.clane.female_clothes)
				uniform = H.clane.female_clothes
	else
		uniform = /obj/item/clothing/under/vampire/emo
		if(H.gender == MALE)
			shoes = /obj/item/clothing/shoes/vampire
		else
			shoes = /obj/item/clothing/shoes/vampire/heels

/obj/effect/landmark/start/trujah
	name = "Antique Shop Worker"
	icon_state = "Assistant"
