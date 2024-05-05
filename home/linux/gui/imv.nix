{ ... }: {

# ██╗███╗   ███╗██╗   ██╗
# ██║████╗ ████║██║   ██║
# ██║██╔████╔██║██║   ██║
# ██║██║╚██╔╝██║╚██╗ ██╔╝
# ██║██║ ╚═╝ ██║ ╚████╔╝ 
# ╚═╝╚═╝     ╚═╝  ╚═══╝  

  # Imv settings for NixOS.
  programs.imv = {

    # Imv enable.
    enable = true;

    # Imv management.
    settings = {

      # Setting binds.
      binds = {

        # Base bind.
        q = "quit";
        
        # Zooming.
        o = "zoom 1";
        i = "zoom -1";

        # Image navigation.
        y = "prev";
        u = "next";
        gh = "goto 1";
        gg = "goto -1";

        # Panning.
        k = "pan 0 -25";
        j = "pan 0 25";
        l = "pan 25 0";
        h = "pan -25 0";

        # Gif playback.
        n = "next_frame";
        v = "toggle_playing";

        # # Rotate Clockwise by 90 degrees.
        r = "rotate by 90";

        # Other bilds.
        x = "close";
        f = "fullscreen";
        d = "overlay";
        p = "exec wl-copy $imv_current_file && notify-send --urgency=normal -i $imv_current_file -a imv $imv_current_file";
        c = "center";
        s = "scaling next";
        z = "zoom actual";
        e = "reset";
      };


      # Options settings.
      options = {

        # Disable loop input.
        loop_input = false;

        # Disable default binds.
        suppress_default_binds = false;

        # Setting overlay.
        background = "1c1c1c";
        overlay_font = Terminus:9;
        overlay_text_color = "dfdfaf";
        overlay_background_color = "1c1c1c";
        overlay_position_bottom = true;

      };

    };

  };

}
