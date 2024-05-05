{ pkgs, ... }: {

# ███████╗███████╗██╗  ██╗
# ╚══███╔╝██╔════╝██║  ██║
#   ███╔╝ ███████╗███████║
#  ███╔╝  ╚════██║██╔══██║
# ███████╗███████║██║  ██║
# ╚══════╝╚══════╝╚═╝  ╚═╝

  # Basic zsh settings.
  programs.zsh = {

    # Zsh enable.
    enable = true;

    # Enable autosuggestion & syntaxHighlighting.
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    # Enable completions and set dotfiles directory.
    enableCompletion = true;
    dotDir = ".config/zsh";

    # Zsh aliases.
    shellAliases = {

      home-upgrade = "home-manager switch --flake";
      ls = "eza -lahF --color=always --icons";
      wet = "curl wttr.in/gomel";
      ip = "ip --color=auto";
      cp = "cp -r --reflink";
      rm = "rm -rf";
      vim = "nvim";
      c = "clear";

    };


    #plugins = [
    #  {
    #    name = "fzf-tab";
    #    src = "${pkgs.zsh-fzf-tab}/share/fzf-tab";
    #  }
    #];


    # Zsh extra config.
    initExtra = ''

      # Auto cd on exiting lf with 'Q'.
      lf () {
          local tempfile="$(mktemp)"
          command lf -command "map Q \$echo \$PWD >$tempfile; lf -remote \"send \$id quit\"" "$@"
      
          if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$(echo -n $(pwd))" ]]; then
                cd -- "$(cat "$tempfile")" || return
          fi
          command rm -f -- "$tempfile" 2>/dev/null
      }

    '';

  };

}
