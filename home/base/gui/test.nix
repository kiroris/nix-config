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

        # Macro.
        "!" = "macro-record";
        "@" = "macro-run";


        # Zoom.
        "+" = "zoom";
        "=" = "zoom-in";
        "-" = "zoom-out";


        # Commands.
        "/" = "cmd-set-text /";
        ":" = "cmd-set-text :";
        "?" = "cmd-set-text ?";
        "." = "cmd-repeat-last";


        # Tabs.
        "<Alt-1>" = "tab-focus 1";
        "<Alt-2>" = "tab-focus 2";
        "<Alt-3>" = "tab-focus 3";
        "<Alt-4>" = "tab-focus 4";
        "<Alt-5>" = "tab-focus 5";
        "<Alt-6>" = "tab-focus 6";
        "<Alt-7>" = "tab-focus 7";
        "<Alt-8>" = "tab-focus 8";
        "<Alt-9>" = "tab-focus -1";
        "<Ctrl-Tab>" = "tab-focus last";
        "T" = "cmd-set-text -sr :tab-focus";


        # Hints.
        "F" = "hint all tab";
        "f" = "hint";

        ";I" = "hint images tab";
        ";i" = "hint images";

        ";f" = "hint all tab-fg";
        ";b" = "hint all tab-bg";

        ";d" = "hint links download";

        ";t" = "hint inputs";
        "I" = "hint inputs --first";
        "gi" = null; #hint inputs --first

        ";Y" = "hint links yank-primary";
        ";y" = "hint links yank";

        ";R" = "hint --rapid links window";
        ";r" = "hint --rapid links tab-bg";

        ";O" = "hint links fill :open -t -r {hint-url}";
        ";o" = "hint links fill :open {hint-url}";










        "'" = "mode-enter jump_mark";



        "<Alt-m>" = "tab-mute";
        "<Ctrl-A>" = "navigate increment";
        "<Ctrl-Alt-p>" = "print";
        "<Ctrl-B>" = "scroll-page 0 -1";
        "<Ctrl-D>" = "scroll-page 0 0.5";
        "<Ctrl-F5>" = "reload -f";
        "<Ctrl-F>" = "scroll-page 0 1";
        "<Ctrl-H>" = "home";
        "<Ctrl-N>" = "open -w";
        "<Ctrl-PgDown>" = "tab-next";
        "<Ctrl-PgUp>" = "tab-prev";
        "<Ctrl-Return>" = "selection-follow -t";
        "<Ctrl-Shift-N>" = "open -p";
        "<Ctrl-Shift-Q>" = "quit";
        "<Ctrl-Shift-T>" = "undo";
        "<Ctrl-T>" = "open -t";
        "<Ctrl-U>" = "scroll-page 0 -0.5";
        "<Ctrl-V>" = "mode-enter passthrough";
        "<Ctrl-W>" = "tab-close";
        "<Ctrl-X>" = "navigate decrement";
        "<Ctrl-p>" = "tab-pin";
        "<Escape>" = "clear-keychain ;; search ;; fullscreen --leave";
        "<F11>" = "fullscreen";
        "<F5>" = "reload";
        "<Return>" = "selection-follow";
        "<Shift-Q>" = "close";
        "<back>" = "back";
        "<forward>" = "forward";
        "B" = "cmd-set-text -s :quickmark-load -t";
        "D" = "tab-close -o";
        "G" = "scroll-to-perc";
        "H" = "back";
        "J" = "tab-prev";
        "K" = "tab-next";
        "L" = "forward";
        "M" = "bookmark-add";
        "N" = "search-prev";
        "O" = "cmd-set-text -s :open -t";
        "PP" = "open -t -- {primary}";
        "Pp" = "open -t -- {clipboard}";
        "R" = "reload -f";
        "Sb" = "bookmark-list --jump";
        "Sh" = "history";
        "Sq" = "bookmark-list";
        "Ss" = "set";
        "U" = "undo -w";
        "V" = "mode-enter caret ;; selection-toggle --line";
        "ZZ" = "quit --save";
        "[[" = "navigate prev";
        "]]" = "navigate next";
        "b" = "cmd-set-text -s :quickmark-load";
        "co" = "tab-only";
        "da" = "download-cancel";
        "dc" = "download-clear";
        "dp" = "download";
        "gB" = "cmd-set-text -s :bookmark-load -t";
        "gC" = "tab-clone";
        "gD" = "tab-give";
        "gU" = "navigate up -t";
        "gb" = "cmd-set-text -s :bookmark-load";
        "gf" = "view-source";
        "gg" = "scroll-to-perc 0";
        "sm" = "mode-enter set_mark";

        "<Ctrl-Q>" = null; # Quit
        "<Ctrl-Shift-W>" = null; # CLose tub
        "<Ctrl-s>" = null; # Stop
        "<Ctrl-Shift-W>" = null; # Close
        "g$" = null; # tab-focus -1
        "g0" = null; # tab-focus 1
        "gJ" = null; # tab-move +
        "gK" = null; # tab-move -
        "gO" = null; # cmd-set-text :open -t -r {url:pretty}
        "gd" = null; # download
        "gm" = null; #tab-move
        "go" = null; # cmd-set-text :open {url:pretty}
        "gt" = null; # cmd-set-text -s :tab-select
        "q" = null; # macro-record

      };

    };

  };

}
