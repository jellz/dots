#/bin/sh
# yay cool script that works like sharenix
cd ~/.local/etc
gnome-screenshot -apf /tmp/lscr.png

echo -n https://i.ronthecookie.me/$(curl -F file=@/tmp/lscr.png -X POST "https://i.ronthecookie.me/upload/$(cat screenshotToken)" | cut -d \" -f 8) | xclip -selection c
notify-send "screenshot taken" ""
rm /tmp/lscr.png
