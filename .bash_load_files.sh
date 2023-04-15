##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/geloman/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/geloman/.config/synth-shell/synth-shell-prompt.sh
fi
