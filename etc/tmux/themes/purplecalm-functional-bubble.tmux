##### GENERAL #####
set -g status on
set -g status-interval 5
set -g status-position top
set -g status-justify centre
set -g status-bg "#1E1B26"
set -g status-fg "#D7D3E0"

#Pane Borders
set -g pane-border-style "fg=#2B2735"
set -g pane-active-border-style "fg=#9B7EDE"

##### LEFT SIDE (Session Pill with overlap) #####
set -g status-left \
"#[fg=#9B7EDE,bg=#1E1B26]#[fg=#1E1B26,bg=#9B7EDE] ❯ #S #[fg=#9B7EDE,bg=#1E1B26]"

##### WINDOWS (Centered smooth bubbles) #####
setw -g window-status-separator ""  # critical, no space between pills!

# Inactive windows
setw -g window-status-format \
"#[fg=#C19FF2,bg=#1E1B26]#[fg=#1E1B26,bg=#C19FF2]#{?window_zoomed_flag,🔍,} #I:#W #[fg=#C19FF2,bg=#1E1B26]"

# Active window
setw -g window-status-current-format \
"#[fg=#FFD68A,bg=#1E1B26]#[fg=#1E1B26,bg=#FFD68A,bold]#{?window_zoomed_flag,𖦏,} #I:#W #[fg=#FFD68A,bg=#1E1B26]"


##### RIGHT SIDE (Overlapping chain of pills) #####
set -g status-right \
"#[fg=#46A4F7,bg=#1E1B26]#[fg=#1E1B26,bg=#46A4F7]🌐 #{online_status} \
#[fg=#A8E19D,bg=#46A4F7]#[fg=#1E1B26,bg=#A8E19D]#{battery_icon} #{battery_percentage} \
#[fg=#FFD68A,bg=#A8E19D]#[fg=#1E1B26,bg=#FFD68A]%b-%d %H:%M#[fg=#FFD68A,bg=#1E1B26]"

