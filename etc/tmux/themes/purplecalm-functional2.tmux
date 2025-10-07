# ──────────────────────────────────────────────
#  PurpleCalm Functional Status Bar Layout
# ──────────────────────────────────────────────

# Basic status style
set -g status-style "bg=#1E1B26,fg=#D7D3E0"
set -g status-interval 5

# Pane borders (optional)
set -g pane-border-style "fg=#2B2735"
set -g pane-active-border-style "fg=#9B7EDE"

# Window list style
setw -g window-status-format " #[fg=#C19FF2]#I:#W "
setw -g window-status-current-format "#[bg=#9B7EDE,fg=#1E1B26,bold] #I:#W #[default]"

# Left side: Session name
set -g status-left-length 40
set -g status-left "#[fg=#1E1B26,bg=#9B7EDE,bold] ❯ #S #[fg=#9B7EDE,bg=#1E1B26]"
# "

# Right side: online status + battery + date/time
set -g status-right-length 120
set -g status-right "#[fg=#9B7EDE]#[fg=#1E1B26,bg=#9B7EDE,bold] #{online_status}  #{battery_icon} #{battery_percentage}  %b-%d  %H:%M "

# Message styles
set -g message-style "bg=#2B2735,fg=#C19FF2"
set -g message-command-style "bg=#2B2735,fg=#C19FF2"

# Copy mode highlight (optional)
set -g mode-style "bg=#9B7EDE,fg=#1E1B26"

