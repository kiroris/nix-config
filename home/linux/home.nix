{ myvars, pkgs, inputs, ... }: {

  # ██╗  ██╗ ██████╗ ███╗   ███╗███████╗    ███╗   ███╗ █████╗ ███╗   ██╗ █████╗  ██████╗ ███████╗██████╗
  # ██║  ██║██╔═══██╗████╗ ████║██╔════╝    ████╗ ████║██╔══██╗████╗  ██║██╔══██╗██╔════╝ ██╔════╝██╔══██╗
  # ███████║██║   ██║██╔████╔██║█████╗█████╗██╔████╔██║███████║██╔██╗ ██║███████║██║  ███╗█████╗  ██████╔╝
  # ██╔══██║██║   ██║██║╚██╔╝██║██╔══╝╚════╝██║╚██╔╝██║██╔══██║██║╚██╗██║██╔══██║██║   ██║██╔══╝  ██╔══██╗
  # ██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗    ██║ ╚═╝ ██║██║  ██║██║ ╚████║██║  ██║╚██████╔╝███████╗██║  ██║
  # ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝


  imports = [
    ./tui
    ./gui
  ];


  home = {
    username = "${myvars.username}";
    homeDirectory = "/home/${myvars.username}";
    sessionVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      DEFAULT_USER = "${myvars.username}";
    };
  };

  systemd.user = {
    startServices = "sd-switch";
    sessionVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
    };
  };

  home.pointerCursor = {
    name = "Adwaita";
    size = 24;
    package = pkgs.gnome3.adwaita-icon-theme;
  };

  home.packages = with pkgs; [
    #inputs.nixvim.packages.${system}.default
  ];

  #programs.fzf = {
  #  enable = true;
  #  enableZshIntegration = true;
  #};

}
