{ nixpkgs, pkgs, lib, ... }: {

# ██████╗  █████╗  ██████╗██╗  ██╗ █████╗  ██████╗ ███████╗███████╗
# ██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔══██╗██╔════╝ ██╔════╝██╔════╝
# ██████╔╝███████║██║     █████╔╝ ███████║██║  ███╗█████╗  ███████╗
# ██╔═══╝ ██╔══██║██║     ██╔═██╗ ██╔══██║██║   ██║██╔══╝  ╚════██║
# ██║     ██║  ██║╚██████╗██║  ██╗██║  ██║╚██████╔╝███████╗███████║
# ╚═╝     ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝

  # Basic packages.
  environment.systemPackages = with pkgs; [

    # View utils.
    zathura
    mpv
    imv

    # Console utils.
    wl-clipboard
    which
    tree
    file

    # Disks utils.
    #hdparm # For disk performance, command.
    #parted

    # System monitoring.
    iotop #Find out the processes doing the most IO.

    # System call monitoring.
    strace # System call monitoring. (sudo strace -p 1)
    ltrace # Library call monitoring.

    # System utils.
    #dmidecode # A tool that reads information about your system's hardware from the BIOS according to the SMBIOS/DMI standard.
    lm_sensors # For `sensors` command.
    cifs-utils # Tools for managing Linux CIFS client filesystems.
    pciutils # lspci
    usbutils # lsusb
    psmisc # killall/pstree/prtstat/fuser/...
    ntfs3g # FUSE-based NTFS driver with full write support.
    #ethtool # Utility for controlling network drivers and hardware.
    rsync # Fast incremental file transfer utility.
    #sbctl # Secure boot keys.

  ];

  # Replace default editor with neovim.
  environment.variables.EDITOR = "nvim";

  # To install chrome(for example), you need to enable unfree packages.
  nixpkgs.config.allowUnfree = lib.mkForce true;

}
