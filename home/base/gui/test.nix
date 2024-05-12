{

  programs.qutebrowser = {

    enable = true;

    # Disable autoconfig.
    loadAutoconfig = false;
    
    # Quickmarks.
    quickmarks = {

      github = "github.com";
      jitsi = "vc.autistici.org";
      proton = "proton.me";
      youtube = "youtube.com";

    };


    keyBindings = {

      normal = {

        # Zoom.
        "+" = "zoom";
        "=" = "zoom-in";
        "-" = "zoom-out";


        # Main pages.
        "<Ctrl-H>" = "home";
        "<Ctrl-T>" = "open -t";


        # Tabs. !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        co = "tab-only";
        gD = "tab-give";
        gC = "tab-clone";

        d = null;
        D = "tab-close -o";

        "<Alt-m>" = "tab-mute";
        "<Ctrl-p>" = "tab-pin";
        "<Ctrl-W>" = "tab-close";


        # Macro.
        "@" = "macro-run";
        "!" = "macro-record";
        q = null; # Macro-record.


        # Reload.
        r = "reload";
        R = "reload -f";
        "<F5>" = "reload";
        "<Ctrl-F5>" ="reload -f";


        # Commands.
        "/" = "cmd-set-text /";
        ":" = "cmd-set-text :";
        "?" = "cmd-set-text ?";
        "." = "cmd-repeat-last";

  
        # Open window.
        "<Ctrl-N>" = "open -w";
        "<Ctrl-Shift-N>" = "open -p";


        # Open tab.
        O = "cmd-set-text -s :open -t";
        go = null; # cmd-set-text :open {url:pretty}
        gO = null; # cmd-set-text :open -t -r {url:pretty}


        # Scroll.
        G = "scroll-to-perc";
        gg = "scroll-to-perc 0";
        "<Ctrl-F>" = "scroll-page 0 1";
        "<Ctrl-B>" = "scroll-page 0 -1";
        "<Ctrl-D>" = "scroll-page 0 0.5";
        "<Ctrl-U>" = "scroll-page 0 -0.5";


        # Tab focus.
        gm = null; #tab-move
        g0 = null; # tab-focus 1
        "<Alt-1>" = "tab-focus 1";
        "<Alt-2>" = "tab-focus 2";
        "<Alt-3>" = "tab-focus 3";
        "<Alt-4>" = "tab-focus 4";
        "<Alt-5>" = "tab-focus 5";
        "<Alt-6>" = "tab-focus 6";
        "<Alt-7>" = "tab-focus 7";
        "<Alt-8>" = "tab-focus 8";
        "<Alt-9>" = "tab-focus -1";
        "g$" = null; # tab-focus -1

        gK = null; # tab-move -
        "<Ctrl-PgUp>" = "tab-prev";

        gJ = null; # tab-move +
        "<Ctrl-PgDown>" = "tab-next";

        "<Ctrl-Tab>" = "tab-focus last";
        T = "cmd-set-text -sr :tab-focus";
        gt = null; # cmd-set-text -s :tab-select


        # Quickmarks.
        am = "quickmark-save";
        m = "cmd-set-text -s :quickmark-load";
        M = "cmd-set-text -s :quickmark-load -t";


        # Bookmarks.
        ab = "bookmark-add";
        b = "cmd-set-text -s :bookmark-load";
        B = "cmd-set-text -s :bookmark-load -t";


        # Hints.
        F = "hint all tab";
        f = "hint";

        ";I" = "hint images tab";
        ";i" = "hint images";

        ";f" = "hint all tab-fg";
        ";b" = "hint all tab-bg";

        ";d" = "hint links download";

        ";t" = "hint inputs";
        I = "hint inputs --first";
        gi = null; #hint inputs --first

        ";Y" = "hint links yank-primary";
        ";y" = "hint links yank";

        ";R" = "hint --rapid links window";
        ";r" = "hint --rapid links tab-bg";

        ";O" = "hint links fill :open -t -r {hint-url}";
        ";o" = "hint links fill :open {hint-url}";










        "PP" = "open -t -- {primary}";
        "Pp" = "open -t -- {clipboard}";


        "'" = "mode-enter jump_mark";
        "sm" = "mode-enter set_mark";


        "Sb" = "bookmark-list --jump";
        "Sq" = "bookmark-list";


        "<Ctrl-A>" = "navigate increment";
        "<Ctrl-Alt-p>" = "print";


        "<Ctrl-Return>" = "selection-follow -t";
        "<Ctrl-Shift-Q>" = "quit";
        "<Ctrl-Shift-T>" = "undo";
        "<Ctrl-V>" = "mode-enter passthrough";
        "<Ctrl-X>" = "navigate decrement";
        "<Escape>" = "clear-keychain ;; search ;; fullscreen --leave";
        "<F11>" = "fullscreen";
        "<Return>" = "selection-follow";
        "<Shift-Q>" = "close";
        "<back>" = "back";
        "<forward>" = "forward";
        "H" = "back";
        "J" = "tab-prev";
        "K" = "tab-next";
        "L" = "forward";
        "N" = "search-prev";

        "Sh" = "history";
        "Ss" = "set";
        "U" = "undo -w";
        "V" = "mode-enter caret ;; selection-toggle --line";
        "ZZ" = "quit --save";
        "[[" = "navigate prev";
        "]]" = "navigate next";
        "da" = "download-cancel";
        "dc" = "download-clear";
        "dp" = "download";

        "gU" = "navigate up -t";
        "gf" = "view-source"; #LAAAAAAAST

        "<Ctrl-Q>" = null; # Quit
        "<Ctrl-Shift-W>" = null; # CLose tub
        "<Ctrl-s>" = null; # Stop
        "<Ctrl-Shift-W>" = null; # Close

        "gd" = null; # download

      };

    };

  };

}
