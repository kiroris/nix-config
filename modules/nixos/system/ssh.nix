{ ... }: {

# ███████╗███████╗██╗  ██╗
# ██╔════╝██╔════╝██║  ██║
# ███████╗███████╗███████║
# ╚════██║╚════██║██╔══██║
# ███████║███████║██║  ██║
# ╚══════╝╚══════╝╚═╝  ╚═╝

  # OpenSSH settings.
  services.openssh = {

    # OpenSSH daemon enable. 
    enable = true;
    
    # Main settings.
    settings = {

      #X11Forwarding = true;
      # Root user is used for remote deployment, so we need to allow it.
      #PermitRootLogin = "prohibit-password";
      #PasswordAuthentication = false; # Disable password PermitRootLogin.

    };

    # Open Firewall for ssh.
    #openFirewall = true;

  };

  # Add terminfo database of all known terminals to the system profile.
  # https://github.com/NixOS/nixpkgs/blob/nixos-23.11/nixos/modules/config/terminfo.nix
  environment.enableAllTerminfo = true;

}

