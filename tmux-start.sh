#!/bin/bash
tmux new -s Main -d -n Main zsh
tmux new-window -n WF zsh
tmux splitw -v -p 50 zsh
tmux splitw -h -p 50 zsh
tmux select-pane -t 0
tmux select-window -t Main
tmux send-keys -t "WF.0" 'wf' Enter
tmux send-keys -t "WF.1" 'wfzw' Enter
tmux send-keys -t "WF.2" 'pamock' Enter
tmux attach -t Main
