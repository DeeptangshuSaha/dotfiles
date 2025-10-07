This setup makes it dead simple to restore configs with a single command, whether you’re on a fresh install or a second machine.

---

## 🧱 Folder Layout

```
~/dotfiles/
├── etc/                     # System-wide configs (target = /etc)
│   ├── fish/
│   │   ├── config.fish
│   │   └── conf.d/
│   │       └── custom_prompt.fish
│   ├── starship/
│   │   └── starship.toml
│   └── tmux/
│       └── tmux.conf
│       └── plugins/
│       └── themes/
│
├── nvim/                    # User config (target = ~/.config)
│   ├── init.lua
│   └── lua/
│       ├── plugins.lua
│       ├── keymaps.lua
│       └── settings.lua
│
└── install.sh               # One-shot setup script
```

---

## ⚙️ `install.sh` (Bootstrap Script)

```bash
#!/usr/bin/env bash
set -e

# Detect script location to run from anywhere
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo $DOTFILES_DIR

echo "🚀 Starting dotfiles setup..."

# --- /etc configs ---
if [ "$EUID" -ne 0 ]; then
    echo "⚠️  Linking /etc configs requires sudo privileges"
    sudo stow -d $DOTFILES_DIR -t /etc etc
    sudo ln -s /etc/tmux/tmux.conf /etc/tmux.conf
    sudo git clone https://github.com/tmux-plugins/tpm /etc/tmux/plugins/tpm
else
    stow -d $DOTFILES_DIR -t /etc etc
fi

# --- ~/.config configs ---
echo "🔗 Linking user configs..."
stow -d $DOTFILES_DIR -t ~/.config .config
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "✅ All configs linked successfully!"
```

Make it executable:

```bash
chmod +x ~/dotfiles/install.sh
```

Then, from any Arch system:

```bash
git clone https://github.com/<yourusername>/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

---

## 🔍 What Happens

| Source                            | Target                  | Example Symlink                                           |
| :-------------------------------- | :---------------------- | :-------------------------------------------------------- |
| `~/dotfiles/etc/tmux.conf`        | `/etc/tmux.conf`        | `/etc/tmux.conf → ~/dotfiles/etc/tmux.conf`               |
| `~/dotfiles/etc/starship.toml`    | `/etc/starship.toml`    | `/etc/starship.toml → ~/dotfiles/etc/starship.toml`       |
| `~/dotfiles/etc/fish/config.fish` | `/etc/fish/config.fish` | `/etc/fish/config.fish → ~/dotfiles/etc/fish/config.fish` |
| `~/dotfiles/nvim`                 | `~/.config/nvim`        | `~/.config/nvim → ~/dotfiles/nvim`                        |

Everything stays organized:

* `/etc` only contains symlinks.
* `~/.config/nvim` is cleanly linked.
* You can version-control the entire thing.

---

## 🧩 Restowing or Updating

If you make changes:

```bash
# Re-link updated files
sudo stow -R -d ~/dotfiles -t /etc etc
stow -R -d ~/dotfiles -t ~/.config nvim
```

If you ever need to remove symlinks:

```bash
sudo stow -D -d ~/dotfiles -t /etc etc
stow -D -d ~/dotfiles -t ~/.config nvim
```

---

## ⚡ Bonus: Add more later

When you want to manage more configs (say `alacritty`, `hypr`, etc.), just make new folders:

```
~/dotfiles/
├── hypr/
│   └── hyprland.conf
├── alacritty/
│   └── alacritty.yml
```

Then add this to `install.sh`:

```bash
stow -d "$DOTFILES_DIR" -t ~/.config hypr
stow -d "$DOTFILES_DIR" -t ~/.config alacritty
```

Remember to run `install.sh` again after adding new folders.

Also Make sure to install Fish, Starship, Neovim, Tmux and most importantly git before you start using them.
