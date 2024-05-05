{ ... }: {

# ██████╗ ██╗   ██╗███╗   ██╗███████╗████████╗
# ██╔══██╗██║   ██║████╗  ██║██╔════╝╚══██╔══╝
# ██║  ██║██║   ██║██╔██╗ ██║███████╗   ██║   
# ██║  ██║██║   ██║██║╚██╗██║╚════██║   ██║   
# ██████╔╝╚██████╔╝██║ ╚████║███████║   ██║   
# ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚══════╝   ╚═╝   

  # Settings dunst for theme "lawson".
  services.dunst.settings = {

    # Main dunst settings.
    global = {

      # Set format notifications.
      format = "<b>%s</b>\\n%b";

      # Set location on the monitor.
      origin = "top-right";

      # Set offset from the monitor angle.
      offset = "9x9"; # I used 22x22.

      # Set frame width.
      frame_width = 2;

      # Set frame color.
      frame_color = "#b4befe";

      # Set separator color; 
      separator_color = "frame";

      # Set font for notifications.
      font = "Fira Code 10";

      # Set radius of corner.
      corner_radius = 7;

      # Set background color.
      background = "#11111B";

      # Set foreground color.
      foreground = "#CDD6F4";


      # ███╗   ███╗ ██████╗ ██╗   ██╗███████╗███████╗
      # ████╗ ████║██╔═══██╗██║   ██║██╔════╝██╔════╝
      # ██╔████╔██║██║   ██║██║   ██║███████╗█████╗  
      # ██║╚██╔╝██║██║   ██║██║   ██║╚════██║██╔══╝  
      # ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝███████║███████╗
      # ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝

      # Set action to mouse left click. 
      mouse_left_click = "close_current";

      # Set action to mouse middle click.
      mouse_middle_click = "context";

      # Set action to mouse right click.
      mouse_right_click = "do_action";


      # ██╗ ██████╗ ██████╗ ███╗   ██╗███████╗
      # ██║██╔════╝██╔═══██╗████╗  ██║██╔════╝
      # ██║██║     ██║   ██║██╔██╗ ██║███████╗
      # ██║██║     ██║   ██║██║╚██╗██║╚════██║
      # ██║╚██████╗╚██████╔╝██║ ╚████║███████║
      # ╚═╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝

      # Set icon path.
      icon_path = "~/.local/share/icons/";

      # Set icon theme.
      icon_theme = "WhiteSur";

      # Set max of icon size.
      max_icon_size = 64;

      # Enable recursive icon lookup.
      enable_recursive_icon_lookup = true;

    };

  };

}
