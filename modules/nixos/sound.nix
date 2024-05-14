{ pkgs, ... }: {

# ███████╗ ██████╗ ██╗   ██╗███╗   ██╗██████╗ 
# ██╔════╝██╔═══██╗██║   ██║████╗  ██║██╔══██╗
# ███████╗██║   ██║██║   ██║██╔██╗ ██║██║  ██║
# ╚════██║██║   ██║██║   ██║██║╚██╗██║██║  ██║
# ███████║╚██████╔╝╚██████╔╝██║ ╚████║██████╔╝
# ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ 

  # Sound management.
  sound.enable = true;
  hardware = {

    # Enable Bluetooth.
    bluetooth.enable = true;

    # Disable pulseaudio.
    pulseaudio.enable = false;

  };


  # Pipewire management.
  services.pipewire = {
    
    # Enable pipewire and jacks.
    enable = true;
	  alsa.enable = true;
    alsa.support32Bit = true;
	  pulse.enable = true;
    jack.enable = true;
    #wireplumber.enable = true;

  };
  

  # Sound packages.
  environment.systemPackages = with pkgs; [

    pavucontrol
    pulseaudio # provides `pactl`, which is required by some apps(e.g. sonic-pi).
    pulsemixer
    playerctl
    pamixer

  ];

}
