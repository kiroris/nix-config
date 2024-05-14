{ ... }: {

# ███████╗███████╗██╗  ██╗
# ╚══███╔╝██╔════╝██║  ██║
#   ███╔╝ ███████╗███████║
#  ███╔╝  ╚════██║██╔══██║
# ███████╗███████║██║  ██║
# ╚══════╝╚══════╝╚═╝  ╚═╝

  # Zsh settings for NixOS.
  programs.zsh = {

    # Zsh aliases for NixOS.
    shellAliases = {

      upgrade = "sudo nixos-rebuild switch --upgrade --flake";
      update = "sudo nixos-rebuild switch --flake ";

    };

  };

}
