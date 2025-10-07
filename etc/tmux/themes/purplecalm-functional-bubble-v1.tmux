##### GENERAL #####
set -g status on
set -g status-interval 5
set-option -g status-position top
set -g status-justify centre
set -g status-bg "#1E1B26"
set -g status-fg "#D7D3E0"
set -g status-left-length 40
set -g status-right-length 120

##### LEFT SIDE (Session Name Pill) #####
set -g status-left \
"#[fg=#9B7EDE,bg=#1E1B26,nobold]#[fg=#1E1B26,bg=#9B7EDE,nobold] ❯ #S #[fg=#9B7EDE,bg=#1E1B26,nobold] "

##### WINDOWS (Center Pills with floating spacing) #####
setw -g window-status-format \
"#[fg=#C19FF2,bg=#1E1B26,nobold]#[fg=#1E1B26,bg=#C19FF2,nobold] #I:#W #[fg=#C19FF2,bg=#1E1B26,nobold] "

setw -g window-status-current-format \
"#[fg=#FFD68A,bg=#1E1B26,bold]#[fg=#1E1B26,bg=#FFD68A,bold] #I:#W #[fg=#FFD68A,bg=#1E1B26,bold] "

##### RIGHT SIDE (Plugins + Date Pills) #####
set -g status-right \
"#[fg=#46A4F7,bg=#1E1B26,nobold]#[fg=#1E1B26,bg=#46A4F7,nobold] 🌐 #{online_status} #[fg=#46A4F7,bg=#1E1B26,nobold] \
#[fg=#A8E19D,bg=#1E1B26,nobold]#[fg=#1E1B26,bg=#A8E19D,nobold] #{battery_icon} #{battery_percentage} #[fg=#A8E19D,bg=#1E1B26,nobold] \
#[fg=#FFD68A,bg=#1E1B26,nobold]#[fg=#1E1B26,bg=#FFD68A,nobold] %b-%d %H:%M #[fg=#FFD68A,bg=#1E1B26,nobold]"

