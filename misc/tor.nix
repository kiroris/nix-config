{ pkgs, ... }: {

# ████████╗ ██████╗ ██████╗ 
# ╚══██╔══╝██╔═══██╗██╔══██╗
#    ██║   ██║   ██║██████╔╝
#    ██║   ██║   ██║██╔══██╗
#    ██║   ╚██████╔╝██║  ██║
#    ╚═╝    ╚═════╝ ╚═╝  ╚═╝

  # Tor settings.
  services.tor = {

    # Enable Tor.
    enable = true;
    client.enable = true;

    # Setting tor bridge.
    settings = {
      UseBridges = true;
      ClientTransportPlugin = "obfs4 exec ${pkgs.obfs4}/bin/obfs4proxy";
      Bridge = "obfs4 IP:ORPort [fingerprint]";
    };

  };

  environment.systemPackages = with pkgs; [

    tor-browser

  ]

}
