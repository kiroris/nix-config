{ theme, ... }: {

# ██████╗ ██╗   ██╗███╗   ██╗███████╗████████╗
# ██╔══██╗██║   ██║████╗  ██║██╔════╝╚══██╔══╝
# ██║  ██║██║   ██║██╔██╗ ██║███████╗   ██║   
# ██║  ██║██║   ██║██║╚██╗██║╚════██║   ██║   
# ██████╔╝╚██████╔╝██║ ╚████║███████║   ██║   
# ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚══════╝   ╚═╝   

  # Import the configuration for the selected theme.
  imports = [ ./${theme} ];

  # Base dunst settings.
  services.dunst = {

    # Dunst enable.
    enable = true;

    # Set timeout for default notifications.
    settings.urgency_normal.timeout = 10;
    settings.urgency_low.timeout = 5;

  };

}
