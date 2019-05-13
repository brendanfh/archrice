#! /bin/bash

# Reload wal colors
wal -R
xrdb -merge ~/.Xresources
exec i3
# exec startxfce4

