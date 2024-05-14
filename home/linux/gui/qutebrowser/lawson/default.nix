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

      #___NOT__MY___#
      #colors.completion.item.selected.match.fg = "#ac8a8c";
      #colors.statusbar.insert.bg = "#181920";
      #colors.tabs.pinned.even.bg = "#262626";
      #colors.tabs.pinned.even.fg = "#f8f8f2";
      #colors.tabs.pinned.odd.bg = "#262626";
      #colors.tabs.pinned.odd.fg = "#f8f8f2";
      #colors.webpage.darkmode.enabled = false;
      #colors.webpage.prefers_color_scheme_dark = true;


      #
      colors = {

        # Set completion colors.
        #completion = {

        #  fg = "#E2E0EC"; #"#CDD6F4";
        #  odd.bg = "#0B0A10";
        #  even.bg = "#0B0A10"; 
        #  match.fg = "#FF5252";

        #  scrollbar.bg = "#000000";
        #  scrollbar.fg = "#b4befe";

        #  # Set completion category colors.
        #  category = {

        #    bg = "#11111B";
        #    fg = "#CDD6F4";
        #    ##778899

        #    border.top = "#b4befe";
        #    border.bottom = "#b4befe";

        #  };

        #  # Set colors for selected item.
        #  item.selected = {

        #    bg = "#b4befe";
        #    border.bottom = "#11111B";
        #    border.top = "#11111B";
        #    fg = "#11111B";
        #    match.fg = "#FF5252";

        #  };

        #};


        #contextmenu = {

          #disabled.bg = "#000000";
          #disabled.fg = "#b4befe";

        #};



        # Downloads
        downloads = {

        #bar.bg = "#11111B";
        #
        #error.bg = "#11111B";
        #error.fg = "#FF5252";
        #
        #start.bg = "#11111B";
        #start.fg = "#54be47";
        #
        #stop.bg = "#11111B";
        #stop.fg = "#CDD6F4";
        #
        #system.bg = "#11111B";
        #system.fg = "#54be47";

        };








      };







      fonts = {
        default_family = "Fira Code";
        default_size = "11pt";
      };


    };

  };

}
