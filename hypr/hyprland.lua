-- Yo ty for using this.
-- Dots made by Yolop make sure to send me
-- your dots insipierd by mine at 'yolop69' discord if you want.
-- Hope you'll gave great time using them <3

------------------
---- MONITORS ----
------------------

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@100Hz",
    position = "auto",
    scale    = "1",
})


---------------------
---- MY PROGRAMS ----
---------------------
local terminal    = "kitty"
local fileManager = "thunar"
local menu        = "rofi -show drun"
-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function () 
hl.exec_cmd("waybar & awww-daemon & firefox & vesktop")
end)
-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")


-----------------------
----- PERMISSIONS -----
-----------------------

--uhh

-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    general = {
        gaps_in  = 4,
        gaps_out = 5,

        border_size = 2,

        col = {
active_border   = { colors = {"rgba(ffb6c1ee)", "rgba(ffb6feee)"}, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },

        resize_on_border = false,
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 4,
        rounding_power = 4,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 0.9,
        inactive_opacity = 0.8,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 1,
            passes    = 4,
            vibrancy  = 1,
        },
    },

    animations = {
        enabled = true,
    },
})

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
-- 
hl.curve("easeOutElastic", {
    type = "bezier",
    points = {
        { 0.34, 1.56 },
        { 0.64, 1 }
    }
})

hl.curve("easeInOutCubic", {
    type = "bezier",
    points = {
        { 0.65, 0.05 },
        { 0.36, 1 }
    }
})

hl.curve("linear", {
    type = "bezier",
    points = {
        { 0, 0 },
        { 1, 1 }
    }
})

hl.curve("easeOutQuart", {
    type = "bezier",
    points = {
        { 0.25, 1 },
        { 0.5, 1 }
    }
})

hl.curve("quick", {
    type = "bezier",
    points = {
        { 0.15, 0 },
        { 0.1, 1 }
    }
})

hl.curve("easy", {
    type = "spring",
    mass = 1,
    stiffness = 238.1191,
    dampening = 24.21279333
})

hl.animation({ leaf = "global",        enabled = true, speed = 10,   bezier = "linear" })
hl.animation({ leaf = "border",        enabled = true, speed = 5.39, bezier = "easeOutElastic" })
hl.animation({ leaf = "windows",       enabled = true, speed = 2.7,  bezier = "easeOutElastic" })
hl.animation({ leaf = "windowsIn",     enabled = true, speed = 2,    bezier = "easeOutElastic", style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = true, speed = 1.49, bezier = "easeOutElastic", style = "popin 50%" })
hl.animation({ leaf = "fadeIn",        enabled = true, speed = 1.73, bezier = "easeOutQuart" })
hl.animation({ leaf = "fadeOut",       enabled = true, speed = 1.46, bezier = "easeOutQuart" })
hl.animation({ leaf = "fade",          enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true, speed = 3.81, bezier = "easeOutQuart" })
hl.animation({ leaf = "layersIn",      enabled = true, speed = 4,    bezier = "easeOutQuart", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true, speed = 1.5,  bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true, speed = 1.79, bezier = "easeOutQuart" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "easeOutQuart" })
hl.animation({ leaf = "workspaces",    enabled = true, speed = 3,    bezier = "easeOutQuart", style = "slide" })
hl.animation({ leaf = "workspacesIn",  enabled = true, speed = 3,    bezier = "easeOutQuart", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3,    bezier = "easeOutQuart", style = "slide" })
hl.animation({ leaf = "zoomFactor",    enabled = true, speed = 7,    bezier = "quick" })


hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

hl.config({
    master = {
        new_status = "master",
    },
})

hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        force_default_wallpaper = -1,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = false, -- If true disables the random hyprland logo / anime girl background. :(
    },
})


---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "us", 
        kb_variant = "",
        kb_model   = "",
        kb_options = "grp:alt_shift_toggle",
        kb_rules   = "",

        follow_mouse = 1,

	accel_profile = flat,
	sensitivity = -0.6, -- more perosnilized for Yolop here
	
        touchpad = {
            natural_scroll = true,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

--per device if you're into that
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})


---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- most of the binds are default
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Move windows with mainMod + shift + arrow keys
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.move({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

hl.bind(mainMod .. " + K", hl.dsp.exec_cmd("/home/yolop/.scripts/rofi-scripts.sh"))
hl.bind("ALT + F10", hl.dsp.exec_cmd("hyprshot -z -o /home/yolop/Pictures/screenshots -m region"))
hl.bind(mainMod .. "+ P", hl.dsp.window.pin({ action = "toggle" }))
hl.bind(mainMod .. "+ I", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind(mainMod .. "+ J", hl.dsp.exec_cmd("hyprpicker -a"))
--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- Kitty no blur
hl.window_rule({
    name = "kitty-no-blur",
    match = { class = "^kitty$" },
    no_blur = true,
})

hl.window_rule({
    name = "kitty-opacity",
    match = { class = "^kitty$" },
    opacity = "0.85 override",
})

-- Blender no opacity rule
hl.window_rule({
    name = "blender-opacity",
    match = { class = "^blender$" },
    opacity = "1 override",
})

-- Firefox no opacity rule
hl.window_rule({
    name = "firefox-opacity",
    match = { class = "^firefox$" },
    opacity = "1 override",
})
