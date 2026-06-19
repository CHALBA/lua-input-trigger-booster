local g          = ui.create("Rage Booster Pro")
local cb_en      = g:checkbox("Enable Left-Click Booster", false)
local sub        = cb_en:group()

-- 3-Feature Settings Panel Configuration
local sl_mindmg  = sub:slider_int("1. Left-Click Min Damage", 1, 100, 50)
local cb_dt      = sub:checkbox("2. Insta-DoubleTap (Double Shot)", true)
local sl_shift   = sub:slider_int("   ↳ Tick Shift Amount", 1, 16, 14)
local cb_hc      = sub:checkbox("3. Hitchance Optimizer (Instant Fire)", true)

client.set_callback("on_createmove_start", function()
    if not cb_en:get() then return end
    if not cmd.is_valid() then return end

    -- Trigger combined feature booster when primary action input (Button 1) is active
    if input.is_button_down(1) then
        if rage then
            -- Feature 1: Force Body Aim to secure payload hit registration
            if rage.force_body_aim then
                rage.force_body_aim(true)
            end

            -- Override minimum damage threshold on primary click to accelerate firing sequence
            if rage.set_min_damage then
                rage.set_min_damage(sl_mindmg:get())
            end

            -- Feature 2: Insta-DoubleTap exploit to manipulate shift cycles (Dual Shot)
            if cb_dt:get() then
                if rage.set_double_tap then
                    rage.set_double_tap(true)
                end
                if rage.set_tick_shift then
                    rage.set_tick_shift(sl_shift:get())
                end
            end

            -- Feature 3: Hitchance Optimizer to trigger near-instantaneous execution cycles
            if cb_hc:get() then
                if rage.set_hitchance then
                    -- Temporarily lower mathematical accuracy threshold to force immediate firing vector
                    rage.set_hitchance(5) 
                end
            end
        end
        
        -- Direct injection of subtick firing commands into the network engine layer
        cmd.add_subtick(buttons.attack, 0.0, true)
    else
        -- Restore system presets to nominal baselines when primary input is released
        if rage then
            if rage.force_body_aim then
                rage.force_body_aim(false)
            end
            -- Revert accuracy hitchance verification filters to default profile settings
            if rage.set_hitchance then
                rage.set_hitchance(65) 
            end
        end
    end
end)

client.log("rage_booster_pro.lua loaded")
