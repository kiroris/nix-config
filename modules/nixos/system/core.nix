{ lib, pkgs, ... }: {

#  ██████╗ ██████╗ ██████╗ ███████╗
# ██╔════╝██╔═══██╗██╔══██╗██╔════╝
# ██║     ██║   ██║██████╔╝█████╗  
# ██║     ██║   ██║██╔══██╗██╔══╝  
# ╚██████╗╚██████╔╝██║  ██║███████╗
#  ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝

  # Boot settings.
  boot = {

    # Loader settings.
    loader = {
      
      # Systemd-boot settings.
      systemd-boot = {
        enable = true;
        consoleMode = lib.mkDefault "max";
        configurationLimit = lib.mkDefault 10;
      };

      # Set a timeout to select a boot entry.
      timeout = lib.mkForce 3; # Wait for 3 seconds.

      # Permission to access EFI variables.
      efi.canTouchEfiVariables = true;

    };

    # Default kernel.
    kernelPackages = pkgs.linuxPackages_latest;

  };

}
