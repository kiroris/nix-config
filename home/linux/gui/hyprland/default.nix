{ theme, ... }: {

# ██╗  ██╗██╗   ██╗██████╗ ██████╗ ██╗      █████╗ ███╗   ██╗██████╗ 
# ██║  ██║╚██╗ ██╔╝██╔══██╗██╔══██╗██║     ██╔══██╗████╗  ██║██╔══██╗
# ███████║ ╚████╔╝ ██████╔╝██████╔╝██║     ███████║██╔██╗ ██║██║  ██║
# ██╔══██║  ╚██╔╝  ██╔═══╝ ██╔══██╗██║     ██╔══██║██║╚██╗██║██║  ██║
# ██║  ██║   ██║   ██║     ██║  ██║███████╗██║  ██║██║ ╚████║██████╔╝
# ╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ 

  # Import the configuration for the selected theme.
  #imports = [ ./${theme} ];

  # Basic foot settings.
  wayland.windowManager.hyprland = {

    enable = true;

    sourceFirst = true;

    settings = {

      "monitor" = ",preferred,auto,1";
      "env" = "XCURSOR_SIZE,24";

      input = {

        "kb_layout" = "us, ru";
        "kb=variant" = "";
        "kb_model" = "pc61";
        "kb_options" = "grp:caps_toggle";
        "kb_rules" = "";

        "follow_mouse" = 1;

        touchpad = {

          # "natural_scroll"      = true;
          "disable_while_typing"= false;
          "tap-to-click"        = true;
          "drag_lock"           = false;

        };

        "sensitivity" = 0; # -1.0 - 1.0, 0 means no modification.

      };


      dwindle = {

        "pseudotile" = "yes"; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        "preserve_split" = "yes"; # you probably want this

      };


    };

  };

}
