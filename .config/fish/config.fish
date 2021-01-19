
# Set PATH variable
set -U fish_user_paths ~/.local/bin/ $fish_user_paths

# Remove greeting message
set fish_greeting

# Automatically start X
if [ -z $DISPLAY ] && [ $XDG_VTNR -eq 1 ]
    exec startx
end

# Bobthefish configs
set -g theme_color_scheme nord

# Vi mode settings
function fish_user_key_bindings
  fish_vi_key_bindings
  bind -M insert -m default jj backward-char force-repaint
end
set fish_key_bindings fish_user_key_bindings

# Set theme settings
set theme_complete_path yes

# Autostart tmux
if status is-interactive
and not set -q TMUX
    exec tmux
end

# Aliases
alias gs "git status"
alias gaa "git add ."
alias gcmm "git commit -m $argv"
alias gp "git push"
alias gck "git checkout $argv"
alias gckb "git checkout -b $argv"


