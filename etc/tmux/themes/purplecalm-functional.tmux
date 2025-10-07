# ──────────────────────────────────────────────
# PurpleCalm-Functional — tmux color theme
# ──────────────────────────────────────────────

# Base colors
set -g status-style "bg=#1E1B26,fg=#D7D3E0"
set -g message-style "bg=#2B2735,fg=#C19FF2"
set -g message-command-style "bg=#2B2735,fg=#C19FF2"
set -g mode-style "bg=#9B7EDE,fg=#1E1B26"

# Pane borders
set -g pane-border-style "fg=#2B2735"
set -g pane-active-border-style "fg=#9B7EDE"

# Window title (inactive & active)
setw -g window-status-style "bg=#1E1B26,fg=#C19FF2"
setw -g window-status-current-style "bg=#2B2735,fg=#FFFFFF,bold"

# Status bar sections
set -g status-left-length 40
set -g status-right-length 120

# Left: Session name
set -g status-left "#[fg=#1E1B26,bg=#9B7EDE,bold] ❯ #S #[fg=#9B7EDE,bg=#1E1B26]"

# Right: Time + Host
set -g status-right "#[fg=#9B7EDE]#[fg=#1E1B26,bg=#9B7EDE,bold] %Y-%m-%d  %H:%M #[fg=#2B2735,bg=#1E1B26]#[fg=#D7D3E0,bg=#2B2735] #h "

# Window names
setw -g window-status-current-format "#[bg=#9B7EDE,fg=#1E1B26,bold] #I:#W #[fg=#9B7EDE,bg=#1E1B26]"
setw -g window-status-format "#[bg=#1E1B26,fg=#C19FF2] #I:#W "

# Command prompt
# set -g command-style "bg=#2B2735,fg=#C19FF2"

# Optional: cursor + selection colors (for terminal passthrough)
set -g @cursor-color "#9B7EDE"
set -g @selection-bg "#2B2735"
set -g @selection-fg "#D7D3E0"

