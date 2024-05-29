{ pkgs, inputs, ... }: {

#  ██████╗  █████╗ ███╗   ███╗███████╗
# ██╔════╝ ██╔══██╗████╗ ████║██╔════╝
# ██║  ███╗███████║██╔████╔██║█████╗  
# ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝  
# ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗
#  ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝

  # Steam settings.
  # https://wiki.archlinux.org/title/steam
  # Games installed by Steam works fine on NixOS, no other configuration needed.
  programs.steam = {
    # Some location that should be persistent:
    #   ~/.local/share/Steam - The default Steam install location
    #   ~/.local/share/Steam/steamapps/common - The default Game install location
    #   ~/.steam/root        - A symlink to ~/.local/share/Steam
    #   ~/.steam             - Some Symlinks & user info
    enable = true;
    #remotePlay.openFirewall = true;
    #dedicatedServer.openFirewall = true;
    gamescopeSession.enable = true;

    # Fix gamescope inside steam.
    #package = pkgs.steam.override {
    #  extraPkgs = pkgs:
    #    with pkgs; [
    #      proton-ge-bin
    #      gamescope
    #      mangohud
    #      openssl

    #      stdenv.cc.cc.lib
    #      libpulseaudio
    #      libvorbis
    #      keyutils
    #      libkrb5
    #      libpng
    #      xorg.libXi
    #      xorg.libXcursor
    #      xorg.libXinerama
    #      xorg.libXScrnSaver

    #      source-sans
    #      source-serif
    #      source-han-sans
    #      source-han-serif
    #    ];
    #};
  };
  
  # Other games packages.
  environment.systemPackages = with pkgs; [

    # Wine.
    #inputs.nix-gaming.packages.wine-tgk
    pkgs.wineWowPackages.stagingFull
    winetricks
    wine

    # Other.
    gamescope
    gamemode
    mangohud
    bottles
    heroic

  ];

}
