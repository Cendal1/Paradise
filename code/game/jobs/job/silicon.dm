/datum/job/ai
	title = "AI"
	flag = AI
	department_flag = ENGSEC
	total_positions = 0 // Not used for AI, see is_position_available below and modules/mob/living/silicon/ai/latejoin.dm
	spawn_positions = 1
	selection_color = "#ccffcc"
	supervisors = "your laws"
	department_head = list("Captain")
	req_admin_notify = 1
	minimal_player_age = 30
	exp_requirements = 2880
	exp_type = EXP_TYPE_SILICON

/datum/job/ai/equip(mob/living/carbon/human/H)
	if(!H)
		return 0

/datum/job/ai/is_position_available()
	return (empty_playable_ai_cores.len != 0)


/datum/job/cyborg
	title = "Cyborg"
	flag = CYBORG
	department_flag = ENGSEC
	total_positions = 2
	spawn_positions = 1
	supervisors = "your laws and the AI"	//Nodrak
	department_head = list("AI")
	selection_color = "#ddffdd"
	minimal_player_age = 15
	exp_requirements = 600
	exp_type = EXP_TYPE_CREW
	alt_titles = list("Android", "Robot")

/datum/job/cyborg/equip(mob/living/carbon/human/H)
	if(!H)
		return 0
	return H.Robotize()