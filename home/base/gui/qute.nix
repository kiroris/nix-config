{

  programs.qutebrowser = {

    enable = true;

    # Disable autoconfig.
    loadAutoconfig = false;
    
    # Quickmarks.
    quickmarks = {

      GitHub = "github.com";
      "Jitsi Meet" = "vc.autistici.org";
      Proton = "proton.me";
      YouTube = "youtube.com";
      "Fat Secret" = "https://www.fatsecret.com/Diary.aspx?pa=fj";

    };


    keyBindings = {

      normal = {

        # Extra keyBindings.
        al = "adblock-update";


        # Zoom.
        "+" = "zoom";
        "=" = "zoom-in";
        "-" = "zoom-out";


        # Search.
        N = "search-prev";
        n = "search-next";


        # Main pages.
        "<Ctrl-H>" = "home";
        "<Ctrl-T>" = "open -t";


        # Undo.
        u = "undo";
        U = "undo -w";
        "<Ctrl-Shift-T>" = null; # undo.


        # Tabs.
        tO = "tab-only";
        tG = "tab-give";
        tc = "tab-clone";
        gd = null; # download.

        d = null;
        D = "tab-close -o";

        "<Alt-m>" = "tab-mute";
        "<Ctrl-p>" = "tab-pin";
        "<Ctrl-W>" = "tab-close";
        "<Ctrl-s>" = null; # stop.
        "<Ctrl-Shift-W>" = null; # tab-close.
        "<Ctrl-Return>" = "selection-follow -t";


        # Macro.
        "@" = "macro-run";
        "!" = "macro-record";
        q = null; # macro-record.


        # Devtools.
        wi = "devtools";
        ws = "view-source";
        wIk = "devtools top";
        wIh = "devtools left";
        wIl = "devtools right";
        wIf = "devtools-focus";
        wIj = "devtools bottom";
        wIw = "devtools window";
        gf = null; # view-source. 


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


        # Download.
        dp = "download";
        dl = "download-clear";
        dc = "download-cancel";
        ad = null; # download-cancel.


        # Exit.
        ZQ = null; # quit.
        ZZ = "quit --save";
        "<Shift-Q>" = "close";
        "<Ctrl-Q>" = null; # quit.
        "<Ctrl-Shift-Q>" = "quit";


        # Open window.
        "<Ctrl-N>" = "open -w";
        "<Ctrl-Shift-N>" = "open -p";


        # Settings and lists.
        Ss = "set";
        Sh = "history";
        sf = null; # save.
        Sq = "bookmark-list";
        Sb = "bookmark-list --jump";
        ss = null; # cmd-set-text -s :set.
        sk = null; # cmd-set-text -s :bind.
        sl = null; # cmd-set-text -s :set -t.


        # clipboard & primary.
        pP = "open -- {primary}";
        pp = "open -- {clipboard}";
        PP = "open -t -- {primary}";
        Pp = "open -t -- {clipboard}";
        wP = null; # open -w -- {primary}.
        wp = null; # open -w -- {clipboard}.


        # Open tab.
        o = "cmd-set-text -s :open";
        O = "cmd-set-text -s :open -t";
        ga = null; # open -t.
        wo = null; # cmd-set-text -s :open -w.
        xo = null; # cmd-set-text -s :open -b.
        go = null; # cmd-set-text :open {url:pretty}.
        wO = null; # cmd-set-text :open -w {url:pretty}.
        gO = null; # cmd-set-text :open -t -r {url:pretty}.
        xO = null; # cmd-set-text :open -b -r {url:pretty}.


        # Navigate
        gu = null; # navigate up.
        gU = null; # navigate up -t.
        "[[" = "navigate prev";
        "]]" = "navigate next";
        "{{" = "navigate prev -t";
        "}}" = "navigate next -t";
        "<Ctrl-A>" = "navigate increment";
        "<Ctrl-X>" = "navigate decrement";


        # Scroll.
        G = "scroll-to-perc";
        gg = "scroll-to-perc 0";
        "<Ctrl-F>" = "scroll-page 0 1";
        "<Ctrl-B>" = "scroll-page 0 -1";
        "<Ctrl-D>" = "scroll-page 0 0.5";
        "<Ctrl-U>" = "scroll-page 0 -0.5";


        # Tab focus.
        gm = null; # tab-move.
        g0 = null; # tab-focus 1.
        "g^" = null; # tab-focus 1.
        "<Alt-1>" = "tab-focus 1";
        "<Alt-2>" = "tab-focus 2";
        "<Alt-3>" = "tab-focus 3";
        "<Alt-4>" = "tab-focus 4";
        "<Alt-5>" = "tab-focus 5";
        "<Alt-6>" = "tab-focus 6";
        "<Alt-7>" = "tab-focus 7";
        "<Alt-8>" = "tab-focus 8";
        "<Alt-9>" = "tab-focus -1";
        "g$" = null; # tab-focus -1.

        gK = null; # tab-move -
        "<Ctrl-PgUp>" = "tab-prev";

        gJ = null; # tab-move +
        "<Ctrl-PgDown>" = "tab-next";

        "<Ctrl-Tab>" = "tab-focus last";
        T = "cmd-set-text -sr :tab-focus";
        gt = null; # cmd-set-text -s :tab-select.


        # Quickmarks.
        wb = null; # cmd-set-text -s :quickmark-load -w.
        am = "quickmark-save";
        m = "cmd-set-text -s :quickmark-load";
        M = "cmd-set-text -s :quickmark-load -t";


        # Bookmarks.
        gb = null; # cmd-set-text -s :bookmark-load.
        gB = null; # cmd-set-text -s :bookmark-load -t.
        wB = null; # cmd-set-text -s :bookmark-load -w.
        ab = "bookmark-add";
        b = "cmd-set-text -s :bookmark-load";
        B = "cmd-set-text -s :bookmark-load -t";


        # Copy.
        yy = "yank";
        YY = "yank -s";
        yt = "yank title";
        YT = "yank title -s";
        yd = null; # yank domain.
        yD = null; # yank domain -s.
        yp = null; # yank pretty-url.
        yP = null; # yank pretty-url -s.
        ym = null; # yank inline [{title}]({url}).
        yM = null; # yank inline [{title}]({url}) -s.


        # Hints.
        f = "hint";
        F = "hint all tab";
        wf = null; # hint all window.

        ";I" = "hint images tab";
        ";i" = "hint images";

        ";f" = "hint all tab-fg";
        ";b" = "hint all tab-bg";

        ";d" = "hint links download";

        ";t" = "hint inputs";
        I = "hint inputs --first";
        gi = null; # hint inputs --first.

        ";Y" = "hint links yank-primary";
        ";y" = "hint links yank";

        ";R" = "hint --rapid links window";
        ";r" = "hint --rapid links tab-bg";

        ";O" = "hint links fill :open -t -r {hint-url}";
        ";o" = "hint links fill :open {hint-url}";


        # Mode.
        v = "mode-enter caret";
        i = "mode-enter insert";
        sm = "mode-enter set_mark";
        "'" = "mode-enter jump_mark";
        "<Ctrl-V>" = "mode-enter passthrough";
        V = "mode-enter caret ;; selection-toggle --line";


        # Base keyBindings.
        tl = null; # forward -t.
        th = null; # back -t.

        H = "back";
        L = "forward";
        J = "tab-prev";
        K = "tab-next";

        k = "scroll up";
        h = "scroll left";
        j = "scroll down";
        l = "scroll right";

        "<back>" = "back";
        wh = null; # back -w.
        "<F11>" = "fullscreen";
        wl = null;# forward -w.
        "<forward>" = "forward";
        "<Ctrl-Alt-p>" = "print";
        "<Return>" = "selection-follow";
        "<Escape>" = "clear-keychain ;; search ;; fullscreen --leave";


        # Config-cycle.
        tCH = null; # config-cycle -p -u *://*.{url:host}/* content.cookies.accept all no-3rdparty never ;; reload
        tCh = null; # config-cycle -p -u *://{url:host}/* content.cookies.accept all no-3rdparty never ;; reload
        tCu = null; # config-cycle -p -u {url} content.cookies.accept all no-3rdparty never ;; reload
        tIH = null; # config-cycle -p -u *://*.{url:host}/* content.images ;; reload
        tIh = null; # config-cycle -p -u *://{url:host}/* content.images ;; reload
        tIu = null; # config-cycle -p -u {url} content.images ;; reload
        tPH = null; # config-cycle -p -u *://*.{url:host}/* content.plugins ;; reload
        tPh = null; # config-cycle -p -u *://{url:host}/* content.plugins ;; reload
        tPu = null; # config-cycle -p -u {url} content.plugins ;; reload
        tSH = null; # config-cycle -p -u *://*.{url:host}/* content.javascript.enabled ;; reload
        tSh = null; # config-cycle -p -u *://{url:host}/* content.javascript.enabled ;; reload
        tSu = null; # config-cycle -p -u {url} content.javascript.enabled ;; reload
        tcH = null; # config-cycle -p -t -u *://*.{url:host}/* content.cookies.accept all no-3rdparty never ;; reload
        tch = null; # config-cycle -p -t -u *://{url:host}/* content.cookies.accept all no-3rdparty never ;; reload
        tcu = null; # config-cycle -p -t -u {url} content.cookies.accept all no-3rdparty never ;; reload
        tiH = null; # config-cycle -p -t -u *://*.{url:host}/* content.images ;; reload
        tih = null; # config-cycle -p -t -u *://{url:host}/* content.images ;; reload
        tiu = null; # config-cycle -p -t -u {url} content.images ;; reload
        tpH = null; # config-cycle -p -t -u *://*.{url:host}/* content.plugins ;; reload
        tph = null; # config-cycle -p -t -u *://{url:host}/* content.plugins ;; reload
        tpu = null; # config-cycle -p -t -u {url} content.plugins ;; reload
        tsH = null; # config-cycle -p -t -u *://*.{url:host}/* content.javascript.enabled ;; reload
        tsh = null; # config-cycle -p -t -u *://{url:host}/* content.javascript.enabled ;; reload
        tsu = null; # config-cycle -p -t -u {url} content.javascript.enabled ;; reload












































      };













    };

  };

}
