{ lib, nixpkgs, inputs, ... }: {

# ███╗   ██╗██╗██╗  ██╗
# ████╗  ██║██║╚██╗██╔╝
# ██╔██╗ ██║██║ ╚███╔╝ 
# ██║╚██╗██║██║ ██╔██╗ 
# ██║ ╚████║██║██╔╝ ██╗
# ╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝

  # Nix ❤️ settings.
  nix = {

    # Make nix commands consistent with the flake.
    registry = lib.mapAttrs (_: value: { flake = value; }) inputs;

    # Remove nix-channel related tools & configs, we use flakes instead.
    channel.enable = false; 

    #environment.etc."nix/inputs/nixpkgs".source = "${nixpkgs}";
    #extraOptions = ''
    #  experimental-features = nix-command flakes
    #'';

    # Main settings.
    settings = {
      nix-path = lib.mkForce "nixpkgs=/etc/nix/inputs/nixpkgs";
      experimental-features = ["nix-command" "flakes" ];
      auto-optimise-store = true;
    };


    # Optimise settings.
    optimise = {
      dates = ["weekly"];
      automatic = true;
    };


    # Garbage collector settings.
    gc = {
      automatic = lib.mkDefault true;
      dates = lib.mkDefault "weekly";
      options = lib.mkDefault "--delete-older-than 30d";
    };

  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?

}
