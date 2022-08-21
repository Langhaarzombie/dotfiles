fusuma --daemon &
keepassxc &
batsignal &
xrdb -merge ~/.Xresources &
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap &
setxkbmap -option compose:ralt &
exec bspwm
