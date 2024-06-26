{ mylib, ... }: {

# ███████╗██╗  ██╗███████╗██╗     ██╗     ███████╗
# ██╔════╝██║  ██║██╔════╝██║     ██║     ██╔════╝
# ███████╗███████║█████╗  ██║     ██║     ███████╗
# ╚════██║██╔══██║██╔══╝  ██║     ██║     ╚════██║
# ███████║██║  ██║███████╗███████╗███████╗███████║
# ╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚══════╝

  # Imports all of my shells.
  imports = mylib.scanPaths ./.;

  # Basic shells settings.
  # Aliases for All shells.
  home.shellAliases = {

    home-upgrade = "home-manager switch --flake";
    ls = "eza -lahF --color=always --icons";
    wet = "curl wttr.in/gomel";
    ip = "ip --color=auto";
    cp = "cp -r --reflink";
    rm = "rm -rf";
    vim = "nvim";
    c = "clear";

  };

}
