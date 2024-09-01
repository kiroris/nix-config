{
# ███╗   ██╗██╗██╗  ██╗ ██████╗ ███████╗
# ████╗  ██║██║╚██╗██╔╝██╔═══██╗██╔════╝
# ██╔██╗ ██║██║ ╚███╔╝ ██║   ██║███████╗
# ██║╚██╗██║██║ ██╔██╗ ██║   ██║╚════██║
# ██║ ╚████║██║██╔╝ ██╗╚██████╔╝███████║
# ╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝
  description = "Kiroris NixOS configuration for both NixOS & macOS(in future).";

  # Custom Cache Servers(TODO)
  #nixConfig = {
  #  extra-substituters = [
  #    "https://anyrun.cachix.org"
  #    "https://hyprland.cachix.org"
  #    "https://nix-gaming.cachix.org"
  #    # "https://nixpkgs-wayland.cachix.org"
  #  ];
  #  extra-trusted-public-keys = [
  #    "anyrun.cachix.org-1:pqBobmOjI7nKlsUMV25u9QHa9btJK65/C8vnO3p346s="
  #    "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
  #    "nix-gaming.cachix.org-1:nbjlureqMbRAxR1gJ/f3hxemL9svXaZF/Ees8vCUUs4="
  #    # "nixpkgs-wayland.cachix.org-1:3lwxaILxMRkVhehr5StQprHdEo4IrE8sRho9R9HOLYA="
  #  ];
  #};

  # Include inputs.
  inputs = {

    # NixOS.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    #nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    #nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-23.11";

    # MacOS(TODO)
    #nixpkgs-darwin.url = "github:nixos/nixpkgs/nixpkgs-23.11-darwin";
    #nix-darwin = {
    #  url = "github:lnl7/nix-darwin";
    #  inputs.nixpkgs.follows = "nixpkgs-darwin";
    #};

    # NixOS-Hardware
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    # Home-Manager
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim.url = "github:elythh/nixvim";



    
    # LanzaBoote
    #lanzaboote = {
    #  url = "github:nix-community/lanzaboote";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};


    #impermanence.url = "github:nix-community/impermanence";


    #hyprland = {
    #  url = "github:hyprwm/Hyprland";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};



    #anyrun = {
    #  url = "github:Kirottu/anyrun";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};


    # generate iso/qcow2/docker/... image from nixos configuration
    #nixos-generators = {
    #  url = "github:nix-community/nixos-generators";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};



    #agenix = {
    #  url = "github:ryan4yin/ragenix";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};

    #nix-gaming.url = "github:fufexan/nix-gaming";



    #disko = {
    #  url = "github:nix-community/disko";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};



    # add git hooks to format nix code before commit
    #pre-commit-hooks = {
    #  url = "github:cachix/pre-commit-hooks.nix";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};



    #nuenv.url = "github:DeterminateSystems/nuenv";

    #daeuniverse.url = "github:daeuniverse/flake.nix/unstable";

    #attic.url = "github:zhaofengli/attic";


    #haumea = {
    #  url = "github:nix-community/haumea/main";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};



############


    #neovim = {
    #  url = "github:neovim/neovim";
    #  flake = false;
    #};


    # my wallpapers
    #wallpapers = {
    #  url = "github:kiroris/wallpapers";
    #  flake = false;
    #};
  };

        #SystemConfig = {
      #  getSystem = builtins.exec "uname -ms";
      #  targets = {
      #    "Linux x86_64" = "x86_64-linux";
      #    "Linux aarch64" = "aarch64-linux";
      #    "Linux riscv64" = "riscv64-linux";
      #    "Darwin x86_64" = "x86_64-darwin";
      #    "Darwin aarch64" = "aarch64-darwin";
      #    _ = "unknown";
      #  };
      #  systemTarget = lib.getOrDefault targets getSystem;
      #};




#  ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗███████╗
# ██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝██╔════╝
# ██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   ███████╗
# ██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   ╚════██║
# ╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   ███████║
#  ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   ╚══════╝

  outputs = { home-manager, nixpkgs, ... } @inputs:

    let 

      inherit (inputs.nixpkgs) lib;
      mylib = import ./lib { inherit lib; };
      myvars = import ./vars { inherit lib; };

      
      # Function of creating special arguments.
      genSpecialArgs = system: pkgs: {
        inherit mylib; 
        inherit myvars;
        inherit system;
        inherit inputs;
        nixpkgs = pkgs;
      };

      
      # Function of creating extra special arguments.
      genExtraSpecialArgs = system: pkgs: theme: de:
        let
          baseArgs = genSpecialArgs system pkgs; # Get the basic special arguments.
        in
          baseArgs // {
            theme = theme; # Adding the theme argument to the base arguments.
            de = de;
        };


      # Nixos configuration function.
      makeNixosConfiguration = hostName: system: pkgs: modules:
        pkgs.lib.nixosSystem {
          system = system;
          modules = [
            ({ ... }: { networking.hostName = hostName; })
            (./. + "/hosts/${hostName}")
            ./modules/base.nix
            ./modules/nixos
          ] ++ modules;
          specialArgs = genSpecialArgs system pkgs;
        };


      # Home-Manager configuration function.
      makeHomeConfiguration = de: theme: system: pkgs: modules:
        home-manager.lib.homeManagerConfiguration {
          pkgs = pkgs.legacyPackages."${system}";
          modules = [
            ./home/base/home.nix
          ] ++ modules;
          extraSpecialArgs = genExtraSpecialArgs system pkgs theme de;
        };

  in {

    nixosConfigurations = {

      wisteria = makeNixosConfiguration "wisteria" "x86_64-linux" inputs.nixpkgs [
        #TODO
        #TODO
        #TODO
        #./misc/tor.nix
        ./misc/game.nix
      ];


      #TODO

    };

    homeConfigurations = {

      "${myvars.username}@wisteria" = makeHomeConfiguration "hyprland" "lawson" "x86_64-linux" inputs.nixpkgs [
        ./home/linux/home.nix
        #TODO
        #TODO
      ];


      #TODO

    };

  };

}
