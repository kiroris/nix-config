{ pkgs, config,  ... }: {

# ██╗     ███████╗
# ██║     ██╔════╝
# ██║     █████╗  
# ██║     ██╔══╝  
# ███████╗██║     
# ╚══════╝╚═╝     

  # Import icons.
  xdg.configFile."lf/icons".source = ./icons;

  # Base lf settings.
  programs.lf = {

    # Lf enable.
    enable = true;

    # Set previewer bind.
    previewer.keybinding = "i";

    # Main settings.
    settings = {

      # Previewer enable.
      preview = true;

      # Hide hidden files.
      hidden = false;

      # Drawbox enable.
      drawbox = true;

      # Icons enable.
      icons = true;

      # Set ignorecase.
      ignorecase = true;

      # Set ratios of lf sections.
      ratios = "2:3";
      #ratios = [
      #  1
      #  1
      #  2
      #];

    };


    # Commands for lf.
    commands = {

      # Open file/cd directory script.
      open = ''
      ''${{
        case $(file --mime-type "$f" -bL) in
            text/*|application/json) $EDITOR "$f";;
            *) setsid -f xdg-open "$f" >/dev/null 2>&1;;
        esac
      }}
      '';

      # Mkdir script.
      mkdir = ''
      ''${{
        printf "Directory Name: "
        read DIR
        mkdir $DIR
      }}
      '';

      # Touch script.
      touch = ''
      ''${{
        printf "File Name: "
        read FILE
        touch $FILE
      }}
      '';

      # Archive scripts.
      zip = ''%zip -r "$f.zip" "$f"'';
      p7zip = ''%7z a "$f.7z" "$f"'';
      tar = ''%tar cvf "$f.tar" "$f"'';
      tarxz = ''%tar cJf "$f.tar.xz" "$f"'';
      targz = ''%tar cvzf "$f.tar.gz" "$f"'';
      tarbz2 = ''%tar cjvf "$f.tar.bz2" "$f"'';
      tarzstd = ''%tar --zstd -cf "$f.tar.zst" "$f"'';

      # Extract script.
      extract = ''
      ''${{
        case "$f" in
            *.zip) unzip "$f" >/dev/null ;;
            *.7z) 7z x "$f" >/dev/null ;;
            *.tar.gz) tar -xzf "$f" >/dev/null ;;
            *.tar.bz2) tar -xjf "$f" >/dev/null ;;
            *.tar.xz) tar -xJf "$f" >/dev/null ;;
            *.tar.zst) tar --zstd -xf "$f" >/dev/null ;;
            *.tar) tar -xf "$f" >/dev/null ;;
            *) echo "Unsupported format" ;;
        esac
      }}
      '';

      # On-cd script.
      on-cd = ''
      &{{
        # '&' commands run silently in background (which is what we want here),
        # but are not connected to stdout.
        # To make sure our escape sequence still reaches stdout we pipe it to /dev/tty
        printf "\033]0; lf:$(pwd | sed "s|$HOME|~|")\007" > /dev/tty
      }}
      '';

    };


    # Mappings for lf.
    keybindings = {

      # Remove some default mappings.
      m = null;
      n = null;
      d = null;
      c = null;
      e = null;
      f = null;

      # Archive mappings.
      az = "zip";
      a7 = "p7zip";
      at = "tar";
      ax = "tarxz";
      ag = "targz";
      ab = "tarbz2";
      as = "tarzstd";

      # Extract mapping.
      ae = "extract";

      # File openers.
      ee = ''$$EDITOR $f'';
      "<enter>" = "open";

      # Actions with files.
      U = "unselect";
      DD = "delete";
      mkd = "mkdir";
      mkf = "touch";
      r = "rename";
      p = "paste";
      y = "copy";
      x = "cut";

      # Other functions.
      "." = "set hidden!";
      s = "mark-save";
      R = "reload";
      C = "clear";
      L = "bottom";
      H = "top";

      #aa = "echo $f";
      #aq = ''echo "$f"'';

    };


    extraConfig =
      
      let
        
        # Previewer script.
        previewer = pkgs.writeShellScriptBin "previewer.sh" ''
          
          FILE=$1
          W=$2
          H=$3
          X=$4
          Y=$5

          image() {
            img2sixel -w "$W" -h "$H" "$FILE"
            exit
          }

          handle_extension() {
            case "$(printf "%s\n" "$1" | awk '{print tolower($0)}')" in
              *.tgz | *.tar.gz | *.tar.bz2 | *.tbz2 | *.tar.txz | *.txz | *.tar | *.zip | *.jar | *.war | *.ear | *.oxt)
              tar --list --file "${1}"
		        exit
          }

          handle_extension
          '';

      in

      ''

      # Also run at startup.
      on-cd
      
      '';

  };

}
