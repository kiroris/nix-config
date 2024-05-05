{ ... }: {

# ████████╗███╗   ███╗██╗   ██╗██╗  ██╗
# ╚══██╔══╝████╗ ████║██║   ██║╚██╗██╔╝
#    ██║   ██╔████╔██║██║   ██║ ╚███╔╝ 
#    ██║   ██║╚██╔╝██║██║   ██║ ██╔██╗ 
#    ██║   ██║ ╚═╝ ██║╚██████╔╝██╔╝ ██╗
#    ╚═╝   ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝

  # Basic cava settings.
  programs.tmux = {

    # Tmux enable.
    enable = true;

    # Enable the mouse in tmux.
    mouse = true;

    # Set key mode.
    keyMode = "vi";

    # Set prefix for tmux.
    prefix = "C-a";

    # Set the main shortcut.
    shortcut = "a";

    # Use 24 hour clock.
    clock24 = true;

    # Bigger history.
    historyLimit = 10000;

    # Set terminal.
    #terminal = "screen-256color";
    terminal = "tmux";

    # No escape time for vi mode.
    escapeTime = 0;

    # Start windows and panes at 1, not 0.
    baseIndex = 1;


    # Setting up an additional configuration.
    extraConfig = ''

    # If I'll used tmux by default.
    # Create a single default session - because a session is created here, tmux.
    # should be started with "tmux attach" rather than "tmux new".
    #new -d -s $USER


    # ██╗  ██╗███████╗██╗   ██╗██████╗ ██╗███╗   ██╗██████╗ ███████╗
    # ██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔══██╗██║████╗  ██║██╔══██╗██╔════╝
    # █████╔╝ █████╗   ╚████╔╝ ██████╔╝██║██╔██╗ ██║██║  ██║███████╗
    # ██╔═██╗ ██╔══╝    ╚██╔╝  ██╔══██╗██║██║╚██╗██║██║  ██║╚════██║
    # ██║  ██╗███████╗   ██║   ██████╔╝██║██║ ╚████║██████╔╝███████║
    # ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝

    # Change keybinds for splitting windows.
    unbind %
    bind | split-window -h
    unbind '"'
    bind - split-window -v

    # Create splits and vertical splits.
    unbind v
    bind-key v split-window -h -p 50 -c "#{pane_current_path}"
    unbind h
    bind-key h split-window -p 50 -c "#{pane_current_path}"

    # Add keybind for easily refreshing tmux configuration.
    unbind r
    bind r source-file ~/.config/tmux/tmux.conf \; display "Reloaded!"

    # Add keybinds for easily resizing tmux panes.
    bind -r J resize-pane -D 5
    bind -r K resize-pane -U 5
    bind -r L resize-pane -R 5
    bind -r H resize-pane -L 5

    # Add keybind for maximizing and minimizing tmux pane.
    bind -r m resize-pane -Z

    # Add keybind for moving through windows.
    unbind h
    bind-key -n C-h select-pane -L
    unbind j
    bind-key -n C-j select-pane -D
    unbind k
    bind-key -n C-k select-pane -U
    unbind l
    bind-key -n C-l select-pane -R

    # Use tmux & Vim clipboard.
    bind-key -T copy-mode-vi 'v' send -X begin-selection # Start selecting text with "v".
    bind-key -T copy-mode-vi 'y' send -X copy-selection # Copy text with "y".

    # Use system clipboard.
    #bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'wl-copy' # Copy text with "y" to system.

    # Don't exit copy mode after dragging with mouse.
    unbind -T copy-mode-vi MouseDragEnd1Pane

    # Screen like binding for last window.
    unbind l
    bind l last-window

    # Bind kill pane.
    bind q kill-pane

    # New windows/pane in $PWD.
    unbind C
    bind C new-window -c "#{pane_current_path}"
    # New window.
    bind c new-window
    
    # Show/hide status bar.
    bind y set-option status

    # Tree sessions & windows.
    bind t choose-tree -Zs

    # Show/hide popup.
    bind p display-popup

    bind -n M-1 selectw -t:1
    bind -n M-2 selectw -t:2
    bind -n M-3 selectw -t:3
    bind -n M-4 selectw -t:4
    bind -n M-5 selectw -t:5
    bind -n M-6 selectw -t:6
    bind -n M-7 selectw -t:7
    bind -n M-8 selectw -t:8
    bind -n M-9 selectw -t:9
    bind -n M-0 selectw -t:10

    '';

  };

}
