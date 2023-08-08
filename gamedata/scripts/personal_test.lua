-- local item = db.actor:item_in_slot(6)
-- if item and item:is_power_consumer() and item:is_power_source_attached() then
	-- if item:get_power_level() < 100 then
		-- item:set_power_level(1)
	-- end
-- end

-- local actor = db.actor

-- local gasmask = actor:item_in_slot(15)
-- if gasmask then
	-- gasmask:set_condition(0.91)
-- end

-- local h = hit()
-- h.draftsman = actor 
-- h.type = hit.fire_wound 
-- h.direction = vector():set(0,0,0) 
-- h:bone("bip01_head")
-- h.power = 0.1
-- h.impulse = 0.0 
-- --h.ap = 1
-- actor:hit(h)

-- actor.health = 1
--actor.power = -actor.power

--db.actor:set_character_rank(299)

--db.actor:give_info_portion("escape_sidor_box_open")

-- local _hour = 24
-- local _min = 90
-- local time_to_advance = (_hour*3600 + _min*60) * 1000
-- level.advance_game_time(time_to_advance)

--level.add_pp_effector("black.ppe", 2007, false)

--skip_time.start(1, 30)

--quick_slots.set_quick_item("energy_drink", 0)

--db.actor.power = -10

local tgt = level.get_target_obj()
if tgt then
	log3("~ target section: %s | name: %s | profile: %s | species %s", 
		tgt:section(), 
		tgt:name(), 
		tgt:profile_name() and tgt:profile_name() or "NO PROFILE", 
		read_if_exists(sys_ini, "r_string", tgt:section(), "species", "NO SPECIES"))
end

-- local torch = actor_get_torch()
-- if torch and torch:is_torch() then
	-- torch = torch:get_torch()
	-- torch:set_brightness(0)
-- end

--actor:get_inventory_owner():SetName("Kotek Bibochynsky")

--local item = actor:item_in_slot(8)

--store_box.unlock_by_name("escape_sidor_box")

-- local main_wnd = get_main_window()
-- if main_wnd then
	-- main_wnd.show_zone_map = not main_wnd.show_zone_map
-- end

-- game.play_hud_motion(1, get_hud_sect(actor:active_item()), "anm_throw")
-- game.stop_hud_motion()