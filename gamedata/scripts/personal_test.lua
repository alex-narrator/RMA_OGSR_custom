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
-- h:bone("bip01_l_upperarm")
-- h.power = 0.6
-- h.impulse = 0.0 
-- --h.ap = 1
-- actor:hit(h)

-- actor.health = 1
--actor.power = -actor.power

--db.actor:set_character_rank(299)

-- local _hour = 24
-- local _min = 90
-- local time_to_advance = (_hour*3600 + _min*60) * 1000
-- level.advance_game_time(time_to_advance)

--level.add_pp_effector("black.ppe", 2007, false)

--skip_time.start(1, 30)

--quick_slots.set_quick_item("energy_drink", 0)

--db.actor.power = -10

local tgt = level.get_target_obj()
show_dbg_info = false
if tgt and show_dbg_info then
	-- log3("~ target section: %s | id %s| story_id %s | name: %s | profile: %s | species %s | nonscript usable %s | position (%s, %s, %s) | lvid %s | gvid %s | visual %s | gulag %s", 
		-- tgt:section(), 
		-- tgt:id(), 
		-- tgt:story_id(), 
		-- tgt:name(), 
		-- tgt:profile_name() and tgt:profile_name() or "NO PROFILE", 
		-- get_species(tgt),
		-- tgt:is_nonscript_usable(),
		-- tgt:position().x, tgt:position().y, tgt:position().z,
		-- tgt:level_vertex_id(),
		-- tgt:game_vertex_id(),
		-- tgt:get_visual_name() or "NO VISUAL",
		-- xr_gulag.get_npc_gulag(tgt) and xr_gulag.get_npc_gulag(tgt).name or "NONE"
		-- )
		
		--log3("~get_addon_flags %s", tgt:get_addon_flags())
		
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

--local item = actor:active_item()
--if item then
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
	-- item:set_show_model_mesh_hud(0, false)
	-- item:set_show_model_mesh_hud(1, false)
	-- item:set_show_model_mesh_hud(2, false)
	-- item:set_show_model_mesh_hud(3, false)
	-- item:set_show_model_mesh_hud(4, false)
	-- item:set_show_model_mesh_hud(5, false)
	--item:set_show_model_mesh_hud(6, false)
	--item:set_show_model_mesh_hud(7, false)
--end

-- local item = actor:active_item()
-- if item then
	-- log3("~mesh count before %s", item:get_mesh_count_hud())
	-- local mesh_num = 2
	-- item:set_show_model_mesh_hud(mesh_num, not item:get_show_model_mesh_hud(mesh_num))
	-- log3("~mesh count after %s", item:get_mesh_count_hud())
-- end

-- local item = level.get_target_obj()
-- if item then
	-- log3("~mesh count before %s", item:get_mesh_count())
	-- local mesh_num = 1
	-- --item:set_bone_visible("wpn_silencer", false)
	-- --item:set_show_model_mesh(mesh_num, not item:get_show_model_mesh(mesh_num)) --Установить видимость меша для худовой модели
	-- log3("~mesh count after %s", item:get_mesh_count())
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

log3("actor position (%s, %s, %s), lvid %s, gvid %s", actor:position().x, actor:position().y, actor:position().z, actor:level_vertex_id(), actor:game_vertex_id())
log3("actor direction (%s, %s, %s)", actor:direction().x, actor:direction().y, actor:direction().z)

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
-- local sects = {
	-- ["dar_document1"] = true,
	-- ["dar_document2"] = true,
	-- ["dar_document3"] = true,
	-- ["dar_document4"] = true,
	-- ["dar_document5"] = true,
-- }
-- for i = 1, 65535 do
	-- sobj = sim:object(i)
	-- if sobj and sects[sobj:section_name()] then
		-- level.map_add_object_spot_ser(i, "personal_location", sobj:section_name())
	-- end
-- end
-- get_main_window().show_zone_map = true

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

-- local pos = actor:position()
-- log3("position %s, %s, %s | lvid %s | gvid %s | is valid %s", pos.x, pos.y, pos.z, actor:level_vertex_id(), actor:game_vertex_id(), game_graph():valid_vertex_id(actor:level_vertex_id()))

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

-- local fov = get_console():get_float("fov")
-- local cur_fov = device().fov
-- local zoom = fov / cur_fov
-- log3("zoom %s | fov %s | cur fov %s", zoom, fov, cur_fov)

-- local target = level.get_target_obj()--actor:object("wpn_ak74")
-- local visual = [[dynamics\weapons\wpn_aks74\wpn_aks74_kobra]]
-- if target then
	-- log3("~item %s with visual %s", target:name(), target:get_visual_name())
	-- target:set_visual_name(visual)
	-- log3("~item %s set visual %s", target:name(), target:get_visual_name())
-- end
-- local hud_sect = [[wpn_ak74_kobra_hud]]
-- if target then
	-- log3("~item %s with hud sect %s", target:name(), target:get_hud_sect())
	-- target:set_hud_sect(hud_sect)
	-- log3("~item %s set hud sect %s", target:name(), target:get_hud_sect())
-- end
--actor:give_info_portion("encyclopedy_zone_locations_garbage")

--log3("~current k_x %s", get_current_kx())
-- local tgt = level.get_target_obj()
-- if tgt then
	-- local known_info = tgt:get_known_info()
	-- if known_info then
		-- log3("~object %s know info %s", tgt:name(), known_info)
	-- end
-- end

-- local item = level.object_by_id(26377)
-- if item then
	-- level.map_add_object_spot_ser(26377, "personal_location", "THAT STRANGE OUTFIT")
	-- log3("~STRANGE ITEM MARKED")
-- end

-- treasure_manager.get_treasure_manager():give_treasure("esc_secret_village_rucksack")

--get_main_window().show_zone_map = not get_main_window().show_zone_map

--//для майбутнього квесту на динаміт Черепа
--actor:give_info_portion("mil_dolg_before_explode")
--actor:disable_info_portion("mil_freedom_under_attack")
--actor:give_info_portion("mil_freedom_under_attack")
--actor:give_info_portion("mil_test_info")
--actor:give_info_portion("non_existed_info")


-- local tgt = level.get_target_obj()
-- if tgt then
	-- --tgt:get_physics_shell():get_element_by_order(0):fix()
	-- --tgt:get_physics_shell():get_element_by_bone_name("link"):fix()
	-- tgt:kill(tgt)
	-- --tgt:set_show_model_mesh(2, false)
	-- -- for i=0, 999 do
		-- -- local bone_name = tgt:get_bone_name(i)
		-- -- if bone_name then
			-- -- log3("~[%s] bone name %s", i, bone_name)
		-- -- else
			-- -- break
		-- -- end
	-- -- end
	-- --tgt:set_bone_visible(tgt:get_bone_name(13), false)
-- end

--actor:change_character_rank(100)

	-- function perform_action(obj)
		-- log3("obj name %s, section %s, visual %s", obj:name(), obj:section(), obj:get_visual_name() or "NO VISUAL")
	-- end
	-- level.iterate_nearest(actor:position(), 1, perform_action)
	
	--actor:set_money(10000)
-- local tgt = level.get_target_obj()
-- if tgt then
	-- tgt:set_money(10000)
-- end
 
--spawn_to_level("mounted_weapon", actor:position(), level.name(), actor:direction())

-- for i=0, 999 do
	-- local bone_name = actor:get_bone_name(i)
	-- if bone_name then
		-- log3("~[%s] bone name %s", i, bone_name)
	-- else
		-- break
	-- end
-- end

-- local pos = actor:position()
-- local dir = actor:direction()
-- dir:set_length(actor:radius() + 0.5)
-- pos.x = pos.x - 0.5
-- local spawn_pos = pos:add(dir)--vector():set(-235.69061279297, -20.170392990112, -146.9228515625)
-- --local spawn_dir = vector():set(0, -1.57, 0)
-- local level_name = level.name()
-- local spawn_sect = "zone_mine_field"
-- spawn_to_level(spawn_sect, spawn_pos, level_name)

-- spawn_pos = vector():set(-72.884278869629, -6.0554096603394, -74.048715209961)
-- spawn_dir = vector():set(-0.91856408119202, 0.011560671962798, 0.39510345458984)
-- level_name = "l03u_agr_underground"
-- spawn_sect = "harmonica_a"
-- spawn_to_level(spawn_sect, spawn_pos, level_name, spawn_dir)

--game.play_hud_motion(2, "medkit_exo_hud", "anm_use", false, 1, true)

--log3("~can detect rad %s", dosimeter.can_detect_radiation())

-- local tgt = level.get_target_obj()
-- if tgt then
	-- log3("~%s is wounded %s | health %s", tgt:profile_name(), tgt:wounded(), tgt.health)
-- end

--body_health.try_upper_limbs_injure(0.3)
--body_health.try_lower_limbs_injure(0.3)

-- local flist = getFS():file_list_open_ex( "$game_saves$", FS.FS_ListFiles + FS.FS_ClampExt + FS.FS_RootOnly + FS.FS_NoLower, "*.sav" )
-- flist:Sort(FS.FS_sort_by_modif_down)
-- for file in flist:GetAll() do
	-- log3("~savegame %s | modif time %s", file:NameFull(), file:Modif())
-- end

-- local str = "st_disassemble.1"
-- log3("find dot %s", not not string.find(str, "%."))

-- local tgt = level.get_target_obj()
-- if tgt then
	-- log3("~actor see %s [%s]", tgt:name(), not not actor:see(tgt))
-- end

-- local test_table = {
	-- 6224, --//'wpn_addon_scope_susat' 'cit_wpn_addon_scope_susat' 6224
-- }

-- for k,v in pairs(test_table) do
	-- alife():release(alife():object(v), true)
-- end

-- local ac10632_text = [[wpn\wpn_addons\wpn_addon_scope_ac10632_new\wpn_addon_scope_ac10632_crosshair_dot]]
-- local kobra_text = [[wpn\wpn_addons\wpn_addon_scope_kobra_new\wpn_addon_scope_kobra_crosshair_dot]]
-- local textures = texture_find(ac10632_text)
-- local texture = textures[texture_name]
-- texture_name = [[wpn\wpn_addons\wpn_addon_scope_ac10632_new\wpn_addon_scope_ac10632_crosshair_dot]]
-- texture:load(texture_name)

actor:give_info_portion("yan_kill_brain_done")
-- actor:give_info_portion("explosive_ozm72_manual")
-- actor:give_info_portion("explosive_svp_manual")
-- actor:give_info_portion("enc_receiver")
--actor:disable_info_portion("mil_freedom_under_attack")

--actor.psy_health = -0.9
--level.map_add_object_spot_ser(id_by_sid(736), "spot_secondary_cop", "mil_watertower_hint")
--game.stop_hud_motion()
--level.set_weather_fx ("fx_surge_day_2")
--xr_effects.start_full_reject()

-- ui_hud_info.try_show_gear_info()

-- local comms = "freedom,dolg,stalker"
-- local tbl = split_string(comms, ",", false, true)
-- log3("~tbl %s",tbl)
--debug_info.show_patrol_points("aes_btr_walk5")
local target_profiles = {
	["sim_stalker_general_upir"] = true,
	["sim_stalker_veteran_umnik"] = true,
	["sim_stalker_novice_neumeha"] = true,
}
local sim = alife()
for id = 1, 65534 do
	local obj = sim:object(id)
	if obj and obj:section_name() == "stalker" and target_profiles[obj:profile_name()] then
		level.map_add_object_spot_ser(id, "spot_stalker_cop", obj.character_name)
		log3("~profile %s - ID %s", obj:profile_name(), id)
	end
end

-- local sobj = sim:story_object(story_ids.rad_monolith_master)
-- if sobj then
	-- level.map_add_object_spot_ser(sobj.id, "spot_stalker_cop", sobj.character_name)
-- end

-- local obj = sim:object(15840)
-- if obj then
	-- log3("~upir on location %s", obj.level_name)
-- end

-- change_game_time(0, 24, 0)

sleep_manager.write_prop_pos_to_file()