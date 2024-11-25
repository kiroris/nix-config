{ pkgs, ... }: {

# ███████╗███████╗██████╗ ██╗   ██╗██╗ ██████╗███████╗███████╗
# ██╔════╝██╔════╝██╔══██╗██║   ██║██║██╔════╝██╔════╝██╔════╝
# ███████╗█████╗  ██████╔╝██║   ██║██║██║     █████╗  ███████╗
# ╚════██║██╔══╝  ██╔══██╗╚██╗ ██╔╝██║██║     ██╔══╝  ╚════██║
# ███████║███████╗██║  ██║ ╚████╔╝ ██║╚██████╗███████╗███████║
# ╚══════╝╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚═╝ ╚═════╝╚══════╝╚══════╝

  # Basic services.
  services = {

    # GVFS daemon.
    gvfs.enable = true;
    
    # FWUPD daemon.
    fwupd.enable = false;

    # Flatpak daemon.
    flatpak.enable = false;

    # CUPS deamon to print documents.
    printing.enable = true;

    # ZerotierOne daemon.
    zerotierone.enable = true;

    logmein-hamachi.enable = true;

    # Dbus daemon.
    dbus = {
      enable = true;
      packages = [ pkgs.gcr ];
    };

  };

}
