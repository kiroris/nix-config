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
      font-awesome
      dejavu_fonts
      fira-code
      fira-code-symbols

      # Patch fonts to nerdfonts.
      (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" "JetBrainsMono"]; })

    ];

  };

}
