{ ... }: {

# ███████╗███████╗ ██████╗██╗   ██╗██████╗ ██╗████████╗██╗   ██╗
# ██╔════╝██╔════╝██╔════╝██║   ██║██╔══██╗██║╚══██╔══╝╚██╗ ██╔╝
# ███████╗█████╗  ██║     ██║   ██║██████╔╝██║   ██║    ╚████╔╝ 
# ╚════██║██╔══╝  ██║     ██║   ██║██╔══██╗██║   ██║     ╚██╔╝  
# ███████║███████╗╚██████╗╚██████╔╝██║  ██║██║   ██║      ██║   
# ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝   ╚═╝      ╚═╝   

  # Security settings.
  security = {

    # Sudo enable.
    sudo.enable = true;

    # Rtkit enable(needed for PipeWire).
    rtkit.enable = true;

    # Polkit enable.
    polkit.enable = true;

    # Fix swaylock.
    # Pick one of the below fix swaylock options.
      # > First method has not been tested.
    #pam.services.swaylock = { };
      # > I use the second method.
    pam.services.swaylock.text = ''
      # PAM configuration file for the swaylock screen locker. By default, it includes
      # the 'login' configuration file (see /etc/pam.d/login)
      auth include login
    '';

  };

  # Enable gnome-keyring for work Nheko.
  services.gnome.gnome-keyring.enable = true;

}
