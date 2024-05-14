{ mylib, ... }: {

# ███████╗██╗  ██╗███████╗██╗     ██╗     ███████╗
# ██╔════╝██║  ██║██╔════╝██║     ██║     ██╔════╝
# ███████╗███████║█████╗  ██║     ██║     ███████╗
# ╚════██║██╔══██║██╔══╝  ██║     ██║     ╚════██║
# ███████║██║  ██║███████╗███████╗███████╗███████║
# ╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚══════╝

  # Imports all of my shells.
  imports = mylib.scanPaths ./.;

  # Shells settings for NixOS.
  # Aliases for All shells.
  home.shellAliases = {

    upgrade = "sudo nixos-rebuild switch --upgrade --flake";
    update = "sudo nixos-rebuild switch --flake ";

  };

}
