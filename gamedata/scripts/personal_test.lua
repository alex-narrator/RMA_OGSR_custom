-- local item = db.actor:item_in_slot(0)
-- if item then
	-- set_item_inv_hidden(item)
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
show_dbg_info = true
if tgt and show_dbg_info then
	log3("~ target section: %s | id %s| story_id %s | name: %s | profile: %s | species %s | nonscript usable %s | position (%s, %s, %s) | lvid %s | gvid %s | visual %s", 
		tgt:section(), 
		tgt:id(), 
		tgt:story_id(), 
		tgt:name(), 
		tgt:profile_name() and tgt:profile_name() or "NO PROFILE", 
		read_if_exists(sys_ini, "r_string", tgt:section(), "species", "NO SPECIES"),
		tgt:is_nonscript_usable(),
		tgt:position().x, tgt:position().y, tgt:position().z,
		tgt:level_vertex_id(),
		tgt:game_vertex_id(),
		tgt:get_visual_name() or "NO VISUAL")
		
		-- pos = tgt:position()
		-- log3("{level = %s, pos = {%.2f, %.2f, %.2f}},", level.name(), pos.x, pos.y, pos.z)
		
		--tgt:switch_power(true)
		
	-- if tgt:is_stalker() or tgt:is_inventory_box() then
		-- actor:start_carbody(tgt)
	-- end
	
	-- if tgt:get_custom_monster() then
		-- local anomaly_detector = tgt:get_custom_monster():anomaly_detector()
		-- log3( "~Anomaly_Detect_Radius = %s", anomaly_detector.Anomaly_Detect_Radius )
		-- log3( "~Anomaly_Detect_Time_Remember = %s", anomaly_detector.Anomaly_Detect_Time_Remember )
		-- log3( "~is_active = %s", anomaly_detector.is_active )
		-- anomaly_detector:activate()
	-- end
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

-- game.play_hud_motion(2, "pistol_kick_hud", "anm_attack", false, 1, false)
-- level.add_cam_effector('camera_effects\\kick\\attack_heavy.anm', 8073, false,'')
--game.stop_hud_motion()
--actor:activate_slot(NO_ACTIVE_SLOT, true)
--block_non_move_action(false)
--get_actor_obj():block_action(key_bindings.kINVENTORY)

--local item = db.actor:active_item()
-- if item then
		-- local wpn = item:get_weapon()
		-- if not wpn then
		-- return end
		-- if read_if_exists(sys_ini, "r_u32", item:section(), "scope_status", 0) == 2 then
		-- local respawn_str = wpn:is_addon_attached(addon.scope) and "scope_respawn_"..wpn:get_addon_name(addon.scope) or "scope_respawn"
		-- local respawn_sect = read_if_exists(sys_ini, "r_string", item:section(), respawn_str, nil)
		-- if respawn_sect and respawn_sect~= item:section() then
			-- item:get_weapon_m():respawn_weapon(respawn_sect)
		-- end
	-- end
-- end
--item:dump_visual_to_log() --Распечатать в лог информацию о мешах и костях модели - мировой и худовой, если худовая доступна.
--log3("--HUD Mesh count of [%s]: [%s]", item:name(), item:get_mesh_count_hud())
--item:set_show_model_mesh_hud(3, false)
--end

-- local item = level.get_target_obj()
-- if item then
-- item:dump_visual_to_log() --Распечатать в лог информацию о мешах и костях модели - мировой и худовой, если худовая доступна.
-- log3("--Mesh count of [%s]: [%s]", item:name(), item:get_mesh_count()) --вывести кол-во мешей в худовой модели.
-- item:set_show_model_mesh(1, false) --Установить видимость меша для худовой модели
-- -- --local shown = item:get_show_model_mesh_hud(0) --узнать показан ли меш
-- end

-- if actor:active_item() then
	-- actor:active_item():stop_aim_inertion(false)
-- end

-- for k,v in pairs(loadout.get_loaded_items()) do
	-- log3("in table id %s | %s", k, level.object_by_id(k):name())
-- end

--actor:hide_weapon(true)
--actor:restore_weapon(true)

	-- function perform_action(dummy, item)
		-- log3("item %s | id %s | condition %.4f", item:section(), item:id(), item:condition())
	-- end	
	-- actor:iterate_ruck(perform_action, nil)
	
--game.play_hud_motion(1, get_hud_sect(actor:active_device()), "anm_idle", true)

--alife():teleport_object(16531, actor:position(), actor:level_vertex_id(), actor:game_vertex_id())

--log3("actor position (%s, %s, %s), lvid %s, gvid %s", actor:position().x, actor:position().y, actor:position().z, actor:level_vertex_id(), actor:game_vertex_id())

--dis_consciousness
--dream
--head_shot
--level.add_cam_effector("camera_effects\\head_shot.anm", 2023, false, "")
--level.remove_cam_effector(2023)

--dialogs_military.killactor(actor)
--dialogs_military.set_actor_enemy_for(708)
--log3("dolg goodwill %s", relation_registry.community_goodwill("dolg", actor:id()))

--pri_wave4_monolith5_free2

--alife():release(sobj_by_name("pri_wave4_monolith5_free2"), true)

-- local torch = actor_get_torch() and actor_get_torch():get_torch() or nil
-- if torch then
	-- --torch:set_brightness(1)
	-- --torch:set_range(70)
	-- --torch:set_angle(math.rad(30))
-- end

--log3("zoom_rotation_factor %s", actor:active_item():get_weapon().zoom_rotation_factor)

-- local sobj
-- local sim = alife()
-- for i = 1, 65535 do
	-- sobj = sim:object(i)
	-- if sobj and (sobj:clsid() == clsid.obj_warbelt or sobj:clsid() == clsid.obj_vest) then
		-- log3("~item %s was deleted", sobj:name())
		-- sim:release(sobj, true)
	-- end
-- end

-- if actor_get_outfit() then
	-- local outfit = actor_get_outfit():get_outfit()
	-- outfit.belt_size = 6
	-- log3("~belt size %s", outfit.belt_size)
-- 

--xr_effects.cit_transfer_actor_inventory(actor)
--sleep_manager.create_mattresses()

--spawn_to_level("mattress", actor:position(), level.name())

--local pos = actor:position()
-- log3("{level = '%s', pos = {%.2f, %.2f, %.2f}, radius = 3},", level.name(), pos.x, pos.y, pos.z)

--sleep_manager.write_place_pos_to_file()

--somnolence.change_val(1)

local pos = actor:position()
log3("position %s, %s, %s | lvid %s | gvid %s | is valid %s", pos.x, pos.y, pos.z, actor:level_vertex_id(), actor:game_vertex_id(), game_graph():valid_vertex_id(actor:level_vertex_id()))

--log3("rain factor %s",level.rain_factor())

-- local patrol_blokpost = {
	-- {-157.442291259766,-30.4027099609375,-338.658447265625},
	-- {-158.017913818359,-30.1919269561768,-325.799224853516},
	-- {-158.044097900391,-30.0590209960938,-301.854370117188},
	-- {-157.319427490234,-31.4657669067383,-263.800872802734},
	-- {-153.711944580078,-28.9144153594971,-226.384124755859},
-- }

-- local patrol_pos_alt = {
	-- {65.8219909667969,2.04917430877686,174.64811706543},
	-- {71.2241363525391,1.84532737731934,161.658843994141},
	-- {70.5435791015625,2.17093467712402,134.596084594727},
	-- {59.8727493286133,-0.219607830047607,155.653274536133},
	-- {56.2842407226562,1.58990907669067,171.434295654297},
	-- {62.3669395446777,0.432019233703613,141.998443603516},
	-- {58.8273506164551,-0.358315467834473,144.334884643555},
-- }

-- for k,v in ipairs(patrol_blokpost) do
	-- spawn_to_level("zone_flame_small", vector():set(v[1],v[2],v[3]), "l01_escape")
-- end

--log3("~actor inv weight: %s", actor:get_inventory_weight())

-- local vest = actor_get_vest()
-- if vest then
	-- vest:binded_object():set_plate_condition(0.1)
-- end

-- local obj = alife():object(17950)
-- log3("obj name %s, section %s , parent id %s has id 17950", obj:name(), obj:section_name(), obj.parent_id)

-- local act_item = actor:active_item()
-- if act_item then
	-- local se_item = alife():object(act_item:id())
	-- log3("~visual %s", se_item.visual_name)
-- end

level.show_item_hud(true)