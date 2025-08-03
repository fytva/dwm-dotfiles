#!/bin/sh

# Запуск статус-бара
slstatus &

# Установка обои
feh --bg-scale /home/user/Pictures/wallpapers/gruvbox.png &

# Запуск picom
picom --config ~/.config/picom/picom.conf &

# Устанавливаем раскладку клавиатуры: US + RU, переключение Alt+Shift
setxkbmap -layout "us,ru" -option "grp:alt_shift_toggle" &

# Запуск оконного менеджера
exec dwm
