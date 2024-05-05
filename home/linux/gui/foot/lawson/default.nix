{ ... }: {

# ███████╗ ██████╗  ██████╗ ████████╗
# ██╔════╝██╔═══██╗██╔═══██╗╚══██╔══╝
# █████╗  ██║   ██║██║   ██║   ██║   
# ██╔══╝  ██║   ██║██║   ██║   ██║   
# ██║     ╚██████╔╝╚██████╔╝   ██║   
# ╚═╝      ╚═════╝  ╚═════╝    ╚═╝   

  # Settings foot for theme "lawson".
  programs.foot.settings = {

    # Set font for foot.
    main.font = "JetBrainsMono NF:style=hard:size=9.7"; # I used style=medium.

    # Customized cursor for each theme.
    cursor.color = "000000 babdb6";

    # Customized colors for each theme.
    colors = {

      foreground = "E2E0EC";
      background = "0B0A10";

      regular0 = "2B273F";  # black
      regular1 = "FF5252";  # red
      regular2 = "54be47";  # green
      regular3 = "ba9d00";  # yellow
      regular4 = "01A0E4";  # blue
      regular5 = "A277FF";  # magenta
      regular6 = "7DD6CF";  # cyan
      regular7 = "F7F7F7";  # white

      bright0 = "252236";   # bright black
      bright1 = "ff5c5c";   # bright red
      bright2 = "5cbe47";   # bright green
      bright3 = "c2a400";   # bright yellow
      bright4 = "1E8EFF";   # bright blue
      bright5 = "9A5FEB";   # bright magenta
      bright6 = "7dd6c9";   # bright cyan
      bright7 = "FFFFFF";   # bSettingright white
      
      # Enabling alpha for terminal.
      alpha = 0.8;

    };
    
  };

}
