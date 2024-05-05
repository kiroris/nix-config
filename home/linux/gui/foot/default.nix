{ theme, ... }: {

# ███████╗ ██████╗  ██████╗ ████████╗
# ██╔════╝██╔═══██╗██╔═══██╗╚══██╔══╝
# █████╗  ██║   ██║██║   ██║   ██║   
# ██╔══╝  ██║   ██║██║   ██║   ██║   
# ██║     ╚██████╔╝╚██████╔╝   ██║   
# ╚═╝      ╚═════╝  ╚═════╝    ╚═╝   

  # Import the configuration for the selected theme.
  imports = [ ./${theme} ];

  # Basic foot settings.
  programs.foot = {

    # Foot enable.
    enable = true;

    # Foot settings.
    settings = {

      # Remove the frame.
      csd.preferred = "none";

      # Limited scroll back to 1000 lines.
      scrollback.lines = 1000;

      # Hide mouse when typing.
      mouse.hide-when-typing = "yes";

      # Main foot settings.
      main = {

        # Set paddings.
        pad = "5x5"; # I used 5x5.

        # Remove the resizing delay.
        resize-delay-ms = 0;

        # Set 256 colors.
        term = "xterm-256color";

        #dpi-aware = "yes";
        #bold-text-in-bright = "yes";

      };


      # Notifications settings.
      bell = {

        # Enable notify for foot.
        notify = "yes";

        # Enable urgent for foot notifications.
        urgent = "yes";

      };

    };
    
  };

}
