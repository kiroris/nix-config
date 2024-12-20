{ self, pkgs, config, lib, ... }: {

# ██╗    ██╗██╗███████╗████████╗███████╗██████╗ ██╗ █████╗ 
# ██║    ██║██║██╔════╝╚══██╔══╝██╔════╝██╔══██╗██║██╔══██╗
# ██║ █╗ ██║██║███████╗   ██║   █████╗  ██████╔╝██║███████║
# ██║███╗██║██║╚════██║   ██║   ██╔══╝  ██╔══██╗██║██╔══██║
# ╚███╔███╔╝██║███████║   ██║   ███████╗██║  ██║██║██║  ██║
#  ╚══╝╚══╝ ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝

  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
  ];

  environment.systemPackages = with pkgs; [
    radare2
    iaito

  
    qpwgraph

    anytype

    nh

    chromium

    cmatrix
    #cava

    ##laptop - acpi

    foot
    haguichi
    logmein-hamachi


    rpcs3

    spotify
    gimp

    #zandronum
  
    #pgadmin4-desktopmode

    ##sway-contrib.grimshot
    grim
    wf-recorder
    slurp
    ffmpeg_5-full
    libnotify
    transmission
    transmission_4-qt
    appimage-run
  
  
    telegram-desktop
    #firefox-wayland
    element-desktop
    gnome.nautilus
    obs-studio

    parsec-bin
  
  
  
  #V#ISUAL
    swaylock-effects
    rofi-wayland
    ##eww-wayland
    eww
    swayidle
    waybar
    dunst
    swww
    lf
 
    pkgs.android-udev-rules
    pkgs.home-manager
    #ungoogled-chromium
  
    gnome3.adwaita-icon-theme
    libsForQt5.breeze-qt5
  
    libsForQt5.kdenlive
 
    #nheko
  
  
    #(python3.withPackages (ps: with ps; [ pyqt6 ]))
    python311Packages.pip
    python311Full
    ## Java
    #temurin-jre-bin-20
    jdk22
    jdk21_headless
    ## Rust
    #rustc
    #cargo
    #rustup
    ## Go 
    #go
    ## C/C++
    #gnumake
    #clang
    #gcc
  ];

  programs.tmux = {
  enable = true;
  clock24 = true;
  };
  programs.hyprland.enable = true;

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # PostgreSQL daemon.
  #services.postgresql.enable = true;

}
