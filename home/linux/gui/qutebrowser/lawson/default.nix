{ ... }: {

#  ██████╗ ██╗   ██╗████████╗███████╗██████╗ ██████╗  ██████╗ ██╗    ██╗███████╗███████╗██████╗ 
# ██╔═══██╗██║   ██║╚══██╔══╝██╔════╝██╔══██╗██╔══██╗██╔═══██╗██║    ██║██╔════╝██╔════╝██╔══██╗
# ██║   ██║██║   ██║   ██║   █████╗  ██████╔╝██████╔╝██║   ██║██║ █╗ ██║███████╗█████╗  ██████╔╝
# ██║▄▄ ██║██║   ██║   ██║   ██╔══╝  ██╔══██╗██╔══██╗██║   ██║██║███╗██║╚════██║██╔══╝  ██╔══██╗
# ╚██████╔╝╚██████╔╝   ██║   ███████╗██████╔╝██║  ██║╚██████╔╝╚███╔███╔╝███████║███████╗██║  ██║
#  ╚══▀▀═╝  ╚═════╝    ╚═╝   ╚══════╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ ╚══════╝╚══════╝╚═╝  ╚═╝

  # Home page.
  #xdg.configFile."rofi/font.rasi".source = ./font.rasi;

  # # Settings qutebrowser for theme "lawson".
  programs.qutebrowser = {

    # Settings.
    settings = {

      tabs.favicons.scale = 1;
      hints.border = "#b4befe";
      tabs.indicator.width = 1;


      # Fonts.
      fonts = {

        default_size = "11pt";
        default_family = "Fira Code";

      };


      # Set colors.
      colors = {

        # Hints.
        hints = {

          bg = "#0B0A10";
          fg = "#E2E0EC";
          match.fg = "#FF5252";

        };


        # Statusbar.
        statusbar = {

          #caret.bg = "";
          #caret.fg = "";
          #selection.bg = "";
          #selection.fg = "";

          #passthrough.bg = "";
          #passthrough.fg = "";

          insert.bg = "#0B0A10";
          insert.fg = "#E2E0EC";

          command.bg = "#0B0A10";
          command.fg = "#E2E0EC";

        };


        # Messages.
        #messages = {

        #  error.bg = "#0B0A10";
        #  error.fg = "#FF5252";
        #  error.border = "#b4befe";


        #  info.bg = "#0B0A10";
        #  info.fg = "#E2E0EC";
        #  info.border = "#b4befe";


        #  warning.bg = "#0B0A10";
        #  warning.fg = "#E2E0EC";
        #  warning.border = "";

        #};


        # Tabs.
        tabs = {

          bar.bg = "#0B0A10";

          odd.bg = "#0B0A10";
          pinned.odd.bg = "#0B0A10";
          odd.fg = "#E2E0EC";
          pinned.odd.fg = "#E2E0EC";
          even.bg = "#0B0A10";
          pinned.even.bg = "#0B0A10";
          even.fg = "#E2E0EC";
          pinned.even.fg = "#E2E0EC";

          selected.odd.bg = "#b4befe";
          pinned.selected.odd.bg = "#b4befe";
          selected.odd.fg = "#11111b";
          pinned.selected.odd.fg = "#11111b";
          selected.even.bg = "#b4befe";
          pinned.selected.even.bg = "#b4befe";
          selected.even.fg = "#11111b";
          pinned.selected.even.fg = "#11111b";

          # Indicator.
          indicator = {

            error = "#FF5252";
            start = "#FFA500";
            stop =  "#8aac8b";
            system = "none";

          };

        };


        # Downloads
        #downloads = {

        #  bar.bg = "#0B0A10";

        #  error.bg = "#0B0A10";
        #  error.fg = "#FF5252";

        #  start.bg = "#0B0A10";
        #  start.fg = "#E2E0EC";

        #  stop.bg = "#0B0A10";
        #  stop.fg = "#CDD6F4";

        #  system.bg = "rgb(11,10,16)";
        #  system.fg = "54be47";

        #};


        # Completion.
        completion = {

          fg = "#E2E0EC";
          odd.bg = "#0B0A10";
          even.bg = "#0B0A10";
          match.fg = "#FF5252";


          # Scrollbar.
          scrollbar.bg = "#0B0A10";
          scrollbar.fg = "#E2E0EC";


          # Category.
          category = {

            bg = "#0B0A10";
            fg = "#b4befe";

            border.top = "#b4befe";
            border.bottom = "#b4befe";

          };


          # Selected item.
          item.selected = {

            bg = "#E2E0EC";
            fg = "#0B0A10";
            match.fg = "#FF5252";

            border.top = "#0B0A10";
            border.bottom = "#0B0A10";

          };

        };

      };

    };

  };

}
