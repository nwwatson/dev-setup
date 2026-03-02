# dev-setup

## Install Dependencies

```shell
brew install tmux
brew install starship
```

## Configure Starship

```
palette = "catppuccin_mocha"

[palettes.catppuccin_mocha]
rosewater = "#f5e0dc"
flamingo = "#f2cdcd"
pink = "#f5c2e7"
mauve = "#cba6f7"
red = "#f38ba8"
maroon = "#eba0ac"
peach = "#fab387"
yellow = "#f9e2af"
green = "#a6e3a1"
teal = "#94e2d5"
sky = "#89dceb"
sapphire = "#74c7ec"
blue = "#89b4fa"
lavender = "#b4befe"
text = "#cdd6f4"
subtext1 = "#bac2de"
subtext0 = "#a6adc8"
overlay2 = "#9399b2"
overlay1 = "#7f849c"
overlay0 = "#6c7086"
surface2 = "#585b70"
surface1 = "#45475a"
surface0 = "#313244"
base = "#1e1e2e"
mantle = "#181825"
crust = "#11111b"
```

## TMUX config

### Bind a key to refresh TMUX configuration

Edit/create .tmux.conf

```shell
nvim ~/.tmux.conf
```

Unbind `r` and bint it to source `.tmux.conf`

```
unbind r
bind r source-file ~/.tmux.conf
```

### Reset the Prefix Key

By default, the prefix for TMUX is Ctrl + b,  however I want to changes this to Ctrl + Space. Add the following to `~/.tmux.conf`

```
# Unbind the current prefix
unbind C-b

# Set Ctrl+Space as the new prefix key
set-option -g prefix C-Space

# Bind Ctrl+Space to send the prefix key
bind-key C-Space send-prefix
```

### Change Pane Navigation

```
# Move to the left a pane
bind-key h select-pane -L
# Move down a pane
bind-key j select-pane -D
# Move up a pane
bind-key k select-pane -U
# Move to the right a pane
bind-key l select-pane -R
```

### Set the status position to top

```
# Set the status position to the top
set-option -g status-position top
```


### Install Tmux Plugin Manager

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Add the following to `.tmux.conf`

```
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'catppuccin/tmux#v2.1.3'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

### Set Catppuccin TMUX Config

```
# Configure the catppuccin plugin
set -g @catppuccin_flavor "mocha"
set -g @catppuccin_window_status_style "rounded"

# Load catppuccin
run ~/.config/tmux/plugins/catppuccin/tmux/catppuccin.tmux

```