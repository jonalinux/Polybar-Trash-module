# Polybar-Trash-module
Module for Polybar
![Screenshot from 2022-04-26 09-32-57](https://user-images.githubusercontent.com/103053714/165258215-14c58062-bc95-434f-8f2e-150dc2868406.png)
![Screenshot from 2022-04-26 09-34-13](https://user-images.githubusercontent.com/103053714/165258220-665e76ce-c518-43a9-986c-ba1c223af7bb.png)

[module/trash]
type = custom/script
exec = ~/.config/polybar/scripts/info-trash.sh
click-left = /bin/sh -c "nautilus ~/.local/share/Trash/files" &
tail = true
interval = 5
format = <label>

