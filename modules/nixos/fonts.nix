{ pkgs, ... }: {

# ███████╗ ██████╗ ███╗   ██╗████████╗███████╗
# ██╔════╝██╔═══██╗████╗  ██║╚══██╔══╝██╔════╝
# █████╗  ██║   ██║██╔██╗ ██║   ██║   ███████╗
# ██╔══╝  ██║   ██║██║╚██╗██║   ██║   ╚════██║
# ██║     ╚██████╔╝██║ ╚████║   ██║   ███████║
# ╚═╝      ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝

  # Fonts management.
  fonts = {

    # Font packages.
    packages = with pkgs; [

      # Install fonts.
      fira
      font-awesome
      dejavu_fonts
      fira-code
      fira-code-symbols
      jetbrains-mono
      open-sans
      roboto-mono
      roboto
      roboto-serif

      # Patch fonts to nerdfonts.
      (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" "JetBrainsMono"]; })

    ];

  };

}
