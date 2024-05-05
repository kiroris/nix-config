{ pkgs, myvars, ... }: {

# ██████╗  █████╗ ███████╗███████╗    ███╗   ███╗ ██████╗ ██████╗ ██╗   ██╗██╗     ███████╗
# ██╔══██╗██╔══██╗██╔════╝██╔════╝    ████╗ ████║██╔═══██╗██╔══██╗██║   ██║██║     ██╔════╝
# ██████╔╝███████║███████╗█████╗      ██╔████╔██║██║   ██║██║  ██║██║   ██║██║     █████╗  
# ██╔══██╗██╔══██║╚════██║██╔══╝      ██║╚██╔╝██║██║   ██║██║  ██║██║   ██║██║     ██╔══╝  
# ██████╔╝██║  ██║███████║███████╗    ██║ ╚═╝ ██║╚██████╔╝██████╔╝╚██████╔╝███████╗███████╗
# ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝    ╚═╝     ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝

  # Base packages for both systems.
  environment.systemPackages = with pkgs; [

    # Required programs.
    transmission
    neofetch
    neovim
    git

    # Console utils.
    du-dust
    cava
    tmux
    duf
    eza
    jq # A lightweight and flexible command-line JSON processor.

    # System utils.
    findutils
    libsixel

    # Archives.
    p7zip
    unzip
    bzip2
    gzip
    zstd
    zip
    xz

    # System monitoring.
    #sysbench # Example test: "sysbench --test=cpu --cpu-max-prime=20000 --threads=4  run".
    #iftop
    #lsof # List open files.
    btop

    # Networking tools.
    #wireshark
    #inetutils
    #dnsutils # A "dig" + "nslookup".
    #tcpdump # Network sniffer.
    #iperf3d
    #ipcalc # It is a calculator for the IPv4/v6 addresses.
    #iperf
    #aria # A lightweight multi-protocol & multi-source command-line download utility.
    #nmap # A utility for network discovery and security auditing.
    curl
    wget
    #mtr # A network diagnostic tool.

  ];
  
  # Enable zsh for both systems.
  programs.zsh.enable = true;

  # Basic Nix settings for both systems.
  nix.settings = {

    # Enable flakes globally.
    experimental-features = ["nix-command" "flakes"];

    # Given the users in this list the right to specify additional substituters via:
    #    1. The `nixConfig.substituers` in `flake.nix`.
    #    2. Command line args `--options substituers http://xxx`.
    trusted-users = [myvars.username];

  #  Substituers enable.
  #  builders-use-substitutes = true;

  #  # Substituers that will be considered before the official ones(https://cache.nixos.org).
  #  substituters = [

  #    # cache mirror located in China
  #    # status: https://mirror.sjtu.edu.cn/
  #    # "https://mirror.sjtu.edu.cn/nix-channels/store"
  #    # status: https://mirrors.ustc.edu.cn/status/
  #    "https://mirrors.ustc.edu.cn/nix-channels/store"
  #    "https://nix-community.cachix.org"

  #    # My own cache server.
  #    "https://kiroris.cachix.org"

  #  ];

  #  trusted-public-keys = [
  #    "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
  #    "ryan4yin.cachix.org-1:Gbk27ZU5AYpGS9i3ssoLlwdvMIh0NxG0w8it/cv9kbU="
  #  ];

  };

}
