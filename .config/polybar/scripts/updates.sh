#!/bin/sh

if ! updates_pacman=$(checkupdates 2> /dev/null | wc -l); then
    updates_arch=0
fi

if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
    updates_aur=0
fi

updates=$((updates_pacman + updates_aur))

if [ "$updates" -gt 0 ]; then
    echo "%{O4px}%{T2}C%{T-}%{O-8px}%{T5}<%{T-}%{O16px}%{T2}$updates%{T-}%{O8px}"
else
    echo "%{O4px}%{T2}C%{T-}%{O-8px}%{T5}<%{T-}%{O16px}"
fi