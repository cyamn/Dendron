#!/bin/env zsh

origin=$(xdotool getactivewindow getwindowname)
mod1=${origin//● /}
prefixArray=("${(@s/.md/)mod1}")
prefix=$prefixArray[1]

echo $prefix

time=0.02

# close editors in other groups
xdotool key ctrl+g
sleep $time
xdotool key c

# Create and open the file with name from $1
touch ./vault/assets/excalidraw/$prefix.$1.excalidraw
code ./vault/assets/excalidraw/$prefix.$1.excalidraw

# wait and toggle zen mode
sleep 2
xdotool key ctrl+k
sleep $time
xdotool key z
sleep $time

# zoom in onto the canvas
xdotool keydown ctrl
xdotool click 4
xdotool click 4
xdotool click 4
xdotool click 4
xdotool keyup ctrl

# enable grid
xdotool key ctrl+ä

# wait until we finished editing the file and then continue
windowId=$(xdotool getactivewindow)
window=$(xdotool getactivewindow getwindowname)
windowWorking="● "$window

# while window name is the same or window id is different
while [[ ($window == $(xdotool getactivewindow getwindowname)) || ($windowWorking == $(xdotool getactivewindow getwindowname)) || ($windowId != $(xdotool getactivewindow))]]
do
    sleep $time
done
sleep $time
xdotool key ctrl+k
sleep $time
xdotool key z
echo "done editing"

if [[ ($origin == $(xdotool getactivewindow getwindowname)) ]]
then

# generate svg
excalidraw_path="./vault/assets/excalidraw/$prefix.$1.excalidraw"
excalidraw_export $excalidraw_path

# show preview window
sleep $time
xdotool key ctrl+p
sleep $time
xdotool key d

svg_path="/assets/excalidraw/$prefix.$1.excalidraw.svg"
xdotool type "![$1]($svg_path)"
else
echo "aborted"
fi

