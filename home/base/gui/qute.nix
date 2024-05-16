{

#  ██████╗ ██╗   ██╗████████╗███████╗██████╗ ██████╗  ██████╗ ██╗    ██╗███████╗███████╗██████╗ 
# ██╔═══██╗██║   ██║╚══██╔══╝██╔════╝██╔══██╗██╔══██╗██╔═══██╗██║    ██║██╔════╝██╔════╝██╔══██╗
# ██║   ██║██║   ██║   ██║   █████╗  ██████╔╝██████╔╝██║   ██║██║ █╗ ██║███████╗█████╗  ██████╔╝
# ██║▄▄ ██║██║   ██║   ██║   ██╔══╝  ██╔══██╗██╔══██╗██║   ██║██║███╗██║╚════██║██╔══╝  ██╔══██╗
# ╚██████╔╝╚██████╔╝   ██║   ███████╗██████╔╝██║  ██║╚██████╔╝╚███╔███╔╝███████║███████╗██║  ██║
#  ╚══▀▀═╝  ╚═════╝    ╚═╝   ╚══════╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ ╚══════╝╚══════╝╚═╝  ╚═╝

  # Basic qutebrowser settings.
  programs.qutebrowser = {

    # QUtebrowser enable.
    enable = true;

    # Disable autoconfig.
    loadAutoconfig = true;

    # Settings.
    settings = {

      scrolling.bar = "when-searching";

      tabs.favicons.show = "pinned";

      #downloads.position = "bottom";

      tabs.show = "multiple"; # "switching"; #"multiple";

      tabs.show_switching_delay = 600;

      #tabs.position = "left";

      statusbar.show = "in-mode";

      auto_save.session = false;

      session.lazy_restore = false;

      content.fullscreen.window = true; 

      # Defautl pages.
      #url = {

      #  default_page = "https://www.google.com/";

      #  start_pages = "https://www.google.com/";

      #};

    };


    # Quickmarks.
    quickmarks = {

      Proton = "proton.me";
      GitHub = "github.com";
      YouTube = "youtube.com";
      "Jitsi Meet" = "vc.autistici.org";
      "Fat Secret" = "https://www.fatsecret.com/Diary.aspx?pa=fj";

    };


    # Search engines.
    searchEngines = {

      "!Google" = "https://www.google.com/search?q={}";
      "!MyNixOS" = "https://mynixos.com/search?q={}";
      "!Arch-Wiki" = "https://wiki.archlinux.org/?search={}";
      "!Nixos-Wiki" = "https://nixos.wiki/index.php?search={}";
      "!Nixos-Packages" = "https://search.nixos.org/packages?channel=unstable&query={}";
      "!Translate" = "https://translate.yandex.ru/?source_lang=en&target_lang=ru&text={}";
      "!Wikipedia" = "https://en.wikipedia.org/wiki/Special:Search?search={}&amp;go=Go&amp;ns0=1";

    };  


    # Key bindings.
    keyBindings = {

      # Key bindings for 'normal' mode.
      normal = {

        # Base keyBindings.
        d = null;
        J = "tab-prev";
        K = "tab-next";


        # Tabs.
        tO = "tab-only";
        tG = "tab-give";
        C = "tab-clone";


        # Exit.
        "<Shift-Q>" = "close";


        # Download.
        dp = "download";
        dl = "download-clear";
        dc = "download-cancel";


        # Hints.
        I = "hint inputs --first";


        # Quickmarks.
        am = "quickmark-save";
        m = "cmd-set-text -s :quickmark-load";
        M = "cmd-set-text -s :quickmark-load -t";


        # Bookmarks.
        ab = "bookmark-add";
        b = "cmd-set-text -s :bookmark-load";
        B = "cmd-set-text -s :bookmark-load -t";


        # Extra keyBindings.
        al = "adblock-update";
        dark = "set content.proxy socks://localhost:9050";
        clear = "set content.proxy system";

      };

    };

  };

}
