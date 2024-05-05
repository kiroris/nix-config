{ ... }: {

# ███╗   ███╗██████╗ ██╗   ██╗
# ████╗ ████║██╔══██╗██║   ██║
# ██╔████╔██║██████╔╝██║   ██║
# ██║╚██╔╝██║██╔═══╝ ╚██╗ ██╔╝
# ██║ ╚═╝ ██║██║      ╚████╔╝ 
# ╚═╝     ╚═╝╚═╝       ╚═══╝  

  # Mpv settings for NixOS.
  programs.mpv = {
    
    # Mpv enable.
    enable = true;

    # Bind settings.
    bindings = {

      #WHEEL_UP = "seek 10";
      #WHEEL_DOWN = "seek -10";
      "Alt+0" = "set window-scale 0.5";

    };


    # Mpv management.
    config = {

      # ██╗   ██╗██╗██████╗ ███████╗ ██████╗ 
      # ██║   ██║██║██╔══██╗██╔════╝██╔═══██╗
      # ██║   ██║██║██║  ██║█████╗  ██║   ██║
      # ╚██╗ ██╔╝██║██║  ██║██╔══╝  ██║   ██║
      #  ╚████╔╝ ██║██████╔╝███████╗╚██████╔╝
      #   ╚═══╝  ╚═╝╚═════╝ ╚══════╝ ╚═════╝ 

      # Start in fullscreen mode by default.
      fs = "yes";

      # Force starting with centered window.
      #geometry = "50%:50%";

      # Don't allow a new window to have a size larger than 90% of the screen size
      autofit-larger = "90%x90%";

      # Do not close the window on exit.
      #keep-open = "yes";

      # Do not wait with showing the video window until it has loaded. (This will
      # resize the window once video is loaded. Also always shows a window with
      # audio.)
      force-window = "immediate";

      # Disable the On Screen Controller (OSC).
      #osc = "no";

      # Keep the player window on top of all other windows.
      #ontop = "yes";

      # Specify fast video rendering preset (for --vo=<gpu|gpu-next> only)
      # Recommended for mobile devices or older hardware with limited processing power
      #profile = "fast";
      
      # Specify high quality video rendering preset (for --vo=<gpu|gpu-next> only)
      # Offers superior image fidelity and visual quality for an enhanced viewing
      # experience on capable hardware
      #profile = "high-quality";

      # Force video to lock on the display's refresh rate, and change video and audio
      # speed to some degree to ensure synchronous playback - can cause problems
      # with some drivers and desktop environments.
      video-sync = "display-resample";

      # Enable hardware decoding if available. Often, this does not work with all
      # video outputs, but should work well with default settings on most systems.
      # If performance or energy usage is an issue, forcing the vdpau or vaapi VOs
      # may or may not help.
      #hwdec=auto


      #  █████╗ ██╗   ██╗██████╗ ██╗ ██████╗ 
      # ██╔══██╗██║   ██║██╔══██╗██║██╔═══██╗
      # ███████║██║   ██║██║  ██║██║██║   ██║
      # ██╔══██║██║   ██║██║  ██║██║██║   ██║
      # ██║  ██║╚██████╔╝██████╔╝██║╚██████╔╝
      # ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝ ╚═════╝ 

      # Specify default audio device. You can list devices with: --audio-device=help
      # The option takes the device string (the stuff between the '...').
      audio-device = "alsa/default";

      # Do not filter audio to keep pitch when changing playback speed.
      audio-pitch-correction = "no";

      # Output 5.1 audio natively, and upmix/downmix audio with a different format.
      #audio-channels=5.1
      # Disable any automatic remix, _if_ the audio output accepts the audio format.
      # of the currently played file. See caveats mentioned in the manpage.
      # (The default is "auto-safe", see manpage.)
      audio-channels = "auto";    


      #  ██████╗ ████████╗██╗  ██╗███████╗██████╗ 
      # ██╔═══██╗╚══██╔══╝██║  ██║██╔════╝██╔══██╗
      # ██║   ██║   ██║   ███████║█████╗  ██████╔╝
      # ██║   ██║   ██║   ██╔══██║██╔══╝  ██╔══██╗
      # ╚██████╔╝   ██║   ██║  ██║███████╗██║  ██║
      #  ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝

      # Pretend to be a web browser. Might fix playback with some streaming sites,
      # but also will break with shoutcast streams.
      #user-agent = "Mozilla/5.0";


      #  ██████╗ █████╗  ██████╗██╗  ██╗███████╗
      # ██╔════╝██╔══██╗██╔════╝██║  ██║██╔════╝
      # ██║     ███████║██║     ███████║█████╗  
      # ██║     ██╔══██║██║     ██╔══██║██╔══╝  
      # ╚██████╗██║  ██║╚██████╗██║  ██║███████╗
      #  ╚═════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝

      # Use a large seekable RAM cache even for local input.
      #cache = "yes";

      # Use extra large RAM cache (needs cache=yes to make it useful).
      #demuxer-max-bytes = "500M";
      #demuxer-max-back-bytes = "100M";

      # Disable the behavior that the player will pause if the cache goes below a
      # certain fill size.
      #cache-pause = "no";

      # Store cache payload on the hard disk instead of in RAM. (This may negatively
      # impact performance unless used for slow input such as network.)
      #cache-dir = "~/.cache/";
      #cache-on-disk = "yes";

      # Display English subtitles if available.
      slang = "en";

      # Play Finnish audio if available, fall back to English otherwise.
      #alang=ru,en

      # Change subtitle encoding. For Arabic subtitles use 'cp1256'.
      # If the file seems to be valid UTF-8, prefer UTF-8.
      # (You can add '+' in front of the codepage to force it.)
      sub-codepage = "cp1256";

      # You can also include other configuration files.
      #include = "/path/to/the/file/you/want/to/include";

      # The options declared as part of profiles override global default settings,
      # but only take effect when the profile is active.
      
      # The following profile can be enabled on the command line with: --profile=eye-cancer
      
      #[eye-cancer]
      #sharpen=5

    };

  };

} 
