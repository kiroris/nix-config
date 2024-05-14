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

      "!google" = "https://www.google.com/search?q={}";
      "!nixos-options" = "https://mynixos.com/search?q={}";
      "!arch-wiki" = "https://wiki.archlinux.org/?search={}";
      "!nixos-wiki" = "https://nixos.wiki/index.php?search={}";
      "!nixos-packages" = "https://search.nixos.org/packages?channel=unstable&query={}";
      "!translate" = "https://translate.yandex.ru/?source_lang=en&target_lang=ru&text={}";
      "!wikipedia" = "https://en.wikipedia.org/wiki/Special:Search?search={}&amp;go=Go&amp;ns0=1";

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


        # Devtools.
        ws = "view-source";


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
