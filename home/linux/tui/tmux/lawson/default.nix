{ ... }: {

# ████████╗███╗   ███╗██╗   ██╗██╗  ██╗
# ╚══██╔══╝████╗ ████║██║   ██║╚██╗██╔╝
#    ██║   ██╔████╔██║██║   ██║ ╚███╔╝ 
#    ██║   ██║╚██╔╝██║██║   ██║ ██╔██╗ 
#    ██║   ██║ ╚═╝ ██║╚██████╔╝██╔╝ ██╗
#    ╚═╝   ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝

  # Settings tmux for theme "lawson".
  programs.tmux = {

    # Status bar settings.
    extraConfig = ''

    # Messages settings.
    set-option -g mode-style 'bg=blue, fg=black'
    set-option -g message-style 'bg=blue, fg=black'
    
    # Status bar center settings.
    set-option -g status-justify centre
    set-option -g status-style "bg=black"
    set-window-option -g window-status-current-format '#[bold]#[fg=blue, bg=black]#[fg=black, bg=blue]#I:#W#[fg=blue, bg=black]'
    set-window-option -g window-status-format '#I:#W'
    set-window-option -g window-status-separator ' '
    set-window-option -g window-status-style "bg=black"
    set-window-option -g window-status-current-style "bg=blue,fg=black"
    
    
    # Settings on the left side of the status bar.
    set-option -g status-left " #S #[fg=blue, bg=black]"
    set-option -g status-left-style "bg=blue,fg=black"
    
    
    # Settings on the right side of the status bar.
    set-option -g status-right "#[fg=blue, bg=black] #[fg=black, bg=blue] %d/%m  %R "
    set-option -g status-right-style "bg=black,fg=blue"

    '';

  };

}
