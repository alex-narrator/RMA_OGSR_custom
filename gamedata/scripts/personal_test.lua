-- local item = db.actor:item_in_slot(6)
-- if item and item:is_power_consumer() and item:is_power_source_attached() then
	-- if item:get_power_level() < 100 then
		-- item:set_power_level(1)
	-- end
-- end

local actor = db.actor

-- local h = hit()
-- h.draftsman = actor 
-- h.type = hit.fire_wound 
-- h.direction = vector():set(0,0,0) 
-- h:bone("bip01_head")
-- h.power = 0.5
-- h.impulse = 0.0 
-- actor:hit(h)

--actor.health = 200
actor.power = -actor.power

--db.actor:set_character_rank(299)

--db.actor:give_info_portion("agr_cit_doctor_meet_start")

-- local _hour = 24
-- local _min = 90
-- local time_to_advance = (_hour*3600 + _min*60) * 1000
-- level.advance_game_time(time_to_advance)

--level.add_pp_effector("black.ppe", 2007, false)

--skip_time.start(1, 30)

--quick_slots.set_quick_item("energy_drink", 0)

--db.actor.power = -10