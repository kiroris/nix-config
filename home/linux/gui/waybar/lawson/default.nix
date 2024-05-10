{ pkgs, ... }: {

# ██╗    ██╗ █████╗ ██╗   ██╗██████╗  █████╗ ██████╗ 
# ██║    ██║██╔══██╗╚██╗ ██╔╝██╔══██╗██╔══██╗██╔══██╗
# ██║ █╗ ██║███████║ ╚████╔╝ ██████╔╝███████║██████╔╝
# ██║███╗██║██╔══██║  ╚██╔╝  ██╔══██╗██╔══██║██╔══██╗
# ╚███╔███╔╝██║  ██║   ██║   ██████╔╝██║  ██║██║  ██║
#  ╚══╝╚══╝ ╚═╝  ╚═╝   ╚═╝   ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
  
  # Settings waybar for theme "lawson".
  programs.waybar = {

    settings = {
      
      # Main settings.
      mainBar = {

        # Set layer.
        layer = "top";

        # Set position.
        position = "top";

        # Set waybar height.
        height = 45;

        # Set margin.
        margin = "0 0 0 0";


        # Configuring the location of modules.
        modules-left = [ "hyprland/workspaces" "custom/separator" "mpris" ];

        modules-center = [ "clock" ];

        modules-right = [ "tray" "pulseaudio" "temperature" "cpu" "bluetooth" "network" "custom/power" ];


        # ███╗   ███╗ ██████╗ ██████╗ ██╗   ██╗██╗     ███████╗███████╗      ██╗     ███████╗███████╗████████╗
        # ████╗ ████║██╔═══██╗██╔══██╗██║   ██║██║     ██╔════╝██╔════╝      ██║     ██╔════╝██╔════╝╚══██╔══╝
        # ██╔████╔██║██║   ██║██║  ██║██║   ██║██║     █████╗  ███████╗█████╗██║     █████╗  █████╗     ██║   
        # ██║╚██╔╝██║██║   ██║██║  ██║██║   ██║██║     ██╔══╝  ╚════██║╚════╝██║     ██╔══╝  ██╔══╝     ██║   
        # ██║ ╚═╝ ██║╚██████╔╝██████╔╝╚██████╔╝███████╗███████╗███████║      ███████╗███████╗██║        ██║   
        # ╚═╝     ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝╚══════╝      ╚══════╝╚══════╝╚═╝        ╚═╝   

        # Workspaces settings.
        "hyprland/workspaces" = {
          
          # Click Settings.
          on-click = "activate";

          # Scroling.
          on-scroll-up = "hyprctl dispatch workspace e-1";
          on-scroll-down = "hyprctl dispatch workspace e+1";

          # Format settings.
          format = "{icon}";
          format-icons = {
            "1" = "一";
            "2" = "二";
            "3" = "三";
            "4" = "四";
            "5" = "五";
            "6" = "六";
            "7" = "七";
            "8" = "八";
            "9" = "九";
            "10" = "十";
            "urgent" = "󱈸";
          };

        };

        
        # Separator settings.
        "custom/separator" = {
          
          # Format settings and disable tooltip.
          format = " ";
          interval = "once";
          tooltip = false;

          return-type = "json";

        };


        # Mpris settings.
        "mpris" = {
          
          # Format settings.
          #format = "{player} ({status}) {dynamic}";
          format = "{player_icon} {dynamic}";
          player-icons = {
            "default" = " ";
            "spotify" = "";
            "firefox" = "";
          };

          # Order settings.
          dynamic-order = [ "title" "artist" ];
          dynamic-len = 35;

        };


        # ███╗   ███╗ ██████╗ ██████╗ ██╗   ██╗██╗     ███████╗███████╗       ██████╗███████╗███╗   ██╗████████╗███████╗██████╗ 
        # ████╗ ████║██╔═══██╗██╔══██╗██║   ██║██║     ██╔════╝██╔════╝      ██╔════╝██╔════╝████╗  ██║╚══██╔══╝██╔════╝██╔══██╗
        # ██╔████╔██║██║   ██║██║  ██║██║   ██║██║     █████╗  ███████╗█████╗██║     █████╗  ██╔██╗ ██║   ██║   █████╗  ██████╔╝
        # ██║╚██╔╝██║██║   ██║██║  ██║██║   ██║██║     ██╔══╝  ╚════██║╚════╝██║     ██╔══╝  ██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗
        # ██║ ╚═╝ ██║╚██████╔╝██████╔╝╚██████╔╝███████╗███████╗███████║      ╚██████╗███████╗██║ ╚████║   ██║   ███████╗██║  ██║
        # ╚═╝     ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝╚══════╝       ╚═════╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝

        # Clock settings.
        "clock" = {

          # Foramt & alt-format settings.
          format = "  {:%a %d %b  %I:%M %p}"; # 12 Hour format. 
          #format = " {:%a %d %b  %H:%M}";	# 24 Hour format.
          format-alt = "  {:%d/%m/%Y  %H:%M:%S}";

          # Tooltip settings.
          tooltip-format = "{:%A %B %d %Y | %H:%M}";
    
          # Interval & scripts.
          interval = 1;
          on-click-right = "exec ~/nix-config/scripts/wallpapers/wall-top";
          #on-click-right = pkgs.writeShellScriptBin "wallpapers-top.sh" ''

          #  
          #  #!/usr/bin/env bash
          #  
          #  folder_path="$HOME/.config/wallpapers"  # Используем $HOME вместо ~
          #  state_file="/dev/shm/state.txt"
          #  
          #  if [ ! -e "$state_file" ]; then
          #      current_index=0
          #  else
          #      current_index=$(cat "$state_file" 2>/dev/null)
          #      if [ -z "$current_index" ]; then
          #          current_index=0
          #      fi
          #  fi
          #  
          #  files=($(ls -1 "$folder_path"))
          #  if [ $(echo $"{files[@]}" | wc -w) -eq 0 ]; then
          #      echo "Error: No files in $folder_path."
          #      exit 1
          #  fi
          #  
          #  if [ $current_index -ge $(echo $"{files[@]}" | wc -w) ]; then
          #      current_index=0
          #  fi
          #  
          #  next_filename=$"{files[$current_index]}"
          #  next_index=$(( (current_index + 1) % $(echo $"{files[@]}" | wc -w) ))
          #  
          #  command="swww img \"$folder_path/$next_filename\" --transition-type grow --transition-duration 3 --transition-pos top"
          #  eval "$command"
          #  
          #  echo "$next_index" > "$state_file"

          #'';

        };


        # ███╗   ███╗ ██████╗ ██████╗ ██╗   ██╗██╗     ███████╗███████╗      ██████╗ ██╗ ██████╗ ██╗  ██╗████████╗
        # ████╗ ████║██╔═══██╗██╔══██╗██║   ██║██║     ██╔════╝██╔════╝      ██╔══██╗██║██╔════╝ ██║  ██║╚══██╔══╝
        # ██╔████╔██║██║   ██║██║  ██║██║   ██║██║     █████╗  ███████╗█████╗██████╔╝██║██║  ███╗███████║   ██║   
        # ██║╚██╔╝██║██║   ██║██║  ██║██║   ██║██║     ██╔══╝  ╚════██║╚════╝██╔══██╗██║██║   ██║██╔══██║   ██║   
        # ██║ ╚═╝ ██║╚██████╔╝██████╔╝╚██████╔╝███████╗███████╗███████║      ██║  ██║██║╚██████╔╝██║  ██║   ██║   
        # ╚═╝     ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝╚══════╝      ╚═╝  ╚═╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   

        # Tray settings.
        "tray" = {

          # Icons settings.
          icon-size = 15;
          spacing = 10;

        };


        # Pulseaudio settings.
        "pulseaudio" = {
          
          # Click settings.
          on-click-middle = "pavucontrol";
          on-click-right = "exec wpctl set-mute @DEFAULT_SOURCE@ toggle";
          on-click = "exec wpctl set-mute @DEFAULT_SINK@ toggle";

          # scroll-step = 1; # Can be a float.

          # Format settings.
          format = "{icon} {volume}% {format_source}";
          format-bluetooth = "{icon} {volume}% {format_source}";
          format-bluetooth-muted = " {format_source}";
          format-muted = "  {format_source}";
          format-source = " {volume}%";
          format-source-muted = "";

          # Icons.
          format-icons = {
            "headphone" = "";
            "hands-free" = "";
            "headset" = "🎧";
            "phone" = "";
            "portable" = "";
            "car" = "";
            "default" = ["" "" ""];
          };

        };

        
        # Temperature settings.
        "temperature" = {
          
          # Path to temp.
          hwmon-path = "/sys/class/hwmon/hwmon2/temp1_input";

          # Set critical temp.
          critical-threshold = 80;

          # Format settings.
          format = "{temperatureC}°C {icon}";
          format-critical = "{temperatureC}°C {i\"custom/ss\"con}";

          # Icons.
          format-icons = ["" "" ""];

          # Click settings.
          on-click = "footclient -H  btop";

        };


        # Cpu settings.
        "cpu" = {

          # Format settings.
          format = "{usage}% ";

          # Click settings.
          on-click = "footclient -H  btop";

        };


        # bluetooth settings.
        "bluetooth" = {

          # Click settings.
          on-click = "footclient -H systemctl status bluetooth.service";

          # Format settings.
          format = "";

          format-connected = "󰂱";
          format-on = "󰂳";

          format-disabled = "󰂲";
          format-off = "󰂲";

          # Tooltip settings.
          tooltip-format = "{status}";

          # Alternative format settings.
          format-alt = " {status}";
          format-alt-click = "click-right";

        };


        # Network settings.
        "network" = {

          # Format settings.
          format = "{icon}";
          format-alt = "{ipaddr}/{cidr} {icon}";
          format-alt-click = "click-right";
          format-wifi = "{icon} {essid}";

          # Icons.
          format-icons = {
            "wifi" = ["睊" "直" ""];
            "ethernet" = [" "];
            "disconnected" = ["⚠ Disabled"];
          };
          
          # Click & tooltip settings.
          on-click = "footclient -H systemctl status NetworkManager";
          tooltip-format = "{ifname}: {ipaddr}";

        };


        # Power settings.
        "custom/power" = {

          # Format settings.
          format = "オフ";

          # Path to script(Click settings).
          on-click = "exec ~/nix-config/scripts/rofi/lawson/powermenu";
          on-click-right = "exec swww img ~/.config/wallpapers/Lawson.jpg";
  
          # Tooltip disable.
          tooltip = false;

        };

      };

    };
    

    #  ██████╗███████╗███████╗
    # ██╔════╝██╔════╝██╔════╝
    # ██║     ███████╗███████╗
    # ██║     ╚════██║╚════██║
    # ╚██████╗███████║███████║
    #  ╚═════╝╚══════╝╚══════╝

    style = ''
      
      * {
        border: none;
        font-family: 'JetBrains Mono', 'Symbols Nerd Font Mono';
        font-size: 16px;
        font-feature-settings: '"zero", "ss01", "ss02", "ss03", "ss04", "ss05", "cv31"';
        min-height: 25px;
      } 

      window#waybar {
        background: transparent;
      }

      #workspaces button {
        background: #11111b;
        color: #b4befe;
        border-radius: 10px;
        margin-top: 10px;
        padding-left: 8px;
        padding-right: 8px;
        margin-left: 3px;
        margin-right: 1px;
      }

      #workspaces button.active {
        background: #b4befe;
        color: #000000;
        border-radius: 10px;
        margin-top: 10px;
        padding-left: 8px;
        padding-right: 8px;
        margin-left: 3px;
        margin-right: 1px;
      }

      #clock, #pulseaudio, #bluetooth, #temperature, #cpu, #mpris, #custom-power,#tray,#network{
        border-radius: 10px;
        background-color: #11111b;
        color: #cdd6f4;
        margin-top: 10px;
        padding-left: 7px;
        padding-right: 7px;
        margin-right: 10px;
      }

      #pulseaudio{
        margin-right: 7px;
      }
      
      #bluetooth {
        border-top-right-radius: 0;
        border-bottom-right-radius: 0;
        padding-right: 5px;
        padding-left: 8px;
        margin-right: 0
      }
      
      #network {
        border-top-left-radius: 0;
        border-bottom-left-radius: 0;
        padding-left: 5px;
        padding-right: 3px;
        margin-right: 2px;
      }
      
      #temperature{
        border-top-right-radius: 0;
        border-bottom-right-radius: 0;
        margin-right: 0;
        padding-right: 2px;
      }
      
      #cpu{
        border-top-left-radius: 0;
        border-bottom-left-radius: 0;
        padding-left: 5px;
        padding-right: 10px;
        margin-right: 7px;
      }
      
      #clock {
        margin-right: 0;
      }
      
      #custom-power {
          color: #ed8796;
          margin-left: 5px;
          margin-right: 5px;
          padding: 5px 12px;
      }

    '';

  };

}
