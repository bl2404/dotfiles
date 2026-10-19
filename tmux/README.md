# Leader
- Ctrl+S. The leader is pressed then, after release goes the command.

# Copy text with no mouse
1. Leader + v
2. Vim navigate to beginning
3. `v` (or Space) to begin selection
4. Move with h/j/k/l to extend the selection
5. `y` - to copy and exit copy mode
6. `Ctrl+Shift+v` to paste

# Copy text with the mouse
- Drag to select, double-click a word, or triple-click a line
- tmux fallback: the highlight stays after release; press `y` to copy and exit
- If WezTerm handles the mouse natively: release copies immediately
- `Ctrl+Shift+v` to paste


# Jumping between panes
- Leader + hjkl

# Creating panes
- Leader + "
- Leader + %

# Scrolling terminal
- Shift + up/down

# Scrolling through commands
- Ctrl + j/k


# useful commands
- tmux source-file ~/.config/tmux/tmux.conf - reloads config
- sudo dnf install xclip - system clipboad integration
- see .bashrc for code starting tmux on terminal startup - (disabled cause of wezterm)
