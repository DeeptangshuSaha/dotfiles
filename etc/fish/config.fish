if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim
#set -g fish_greeting "󰑱 Welcome Orbit-Sync 󰑱"
set -gx STARSHIP_CONFIG /etc/starship/starship.toml

starship init fish | source
