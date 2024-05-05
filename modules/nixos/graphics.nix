{ pkgs, ... }: {

#  ██████╗ ██████╗  █████╗ ██████╗ ██╗  ██╗██╗ ██████╗███████╗
# ██╔════╝ ██╔══██╗██╔══██╗██╔══██╗██║  ██║██║██╔════╝██╔════╝
# ██║  ███╗██████╔╝███████║██████╔╝███████║██║██║     ███████╗
# ██║   ██║██╔══██╗██╔══██║██╔═══╝ ██╔══██║██║██║     ╚════██║
# ╚██████╔╝██║  ██║██║  ██║██║     ██║  ██║██║╚██████╗███████║
#  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚═╝ ╚═════╝╚══════╝

  # Xdg-portal settings.
  xdg.portal = {

    # Xdg-portal enable.
    enable = true;

    # Install xdg-portal packages.
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];

    # Xdg-portal-wrl enable.
    wlr.enable = true;
  
    # Install xdg-portal-wrl packages.
    configPackages = with pkgs; [
      xdg-desktop-portal-wlr
    ];

    # GTK portal needed to make gtk apps happy.
    #gtkUsePortal = true;

  };


  # OpenGL settings.
  hardware.opengl = {

    # OpenGL enable.
    enable = true;

    # Direct Rendering Infrastructure enable(for Wayland, for X11 not necessary).
    driSupport = true;
    #extraPackages = with pkgs; [
    #  rocmPackages.clr.icd
    #];

  };


  # Graphics packages.
  environment.systemPackages = with pkgs; [

    mesa-demos
    xdg-utils
    openssl
    libGL
    glib # G-settings.

  ];

}
