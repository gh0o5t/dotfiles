[[ -f ~/.Xresources ]] && xrdb -merge -I $HOME ~/.Xresources
compton --config ~/.config/compton/compton.conf &
feh --bg-fill ~/.config/wallpapers/tree_horizon_minimalism_128903_2560x1080.jpg
pasystray &
dwmblocks &
exec dwm
