#!/bin/bash
# Start Main session
TAB_MAIN_NAME="🏬 Main"
TAB_WF_NAME="🪰 WF"
tmux new -s Main -d -n "$TAB_MAIN_NAME" zsh
tmux new-window -n "$TAB_WF_NAME" zsh
tmux splitw -v -p 50 zsh
tmux select-pane -t 0
tmux splitw -h -p 50 zsh
tmux select-pane -t 2
tmux splitw -h -p 40 zsh
tmux splitw -h -p 50 zsh
tmux splitw -v -p 50 zsh
tmux select-pane -t 0
tmux select-window -t "$TAB_MAIN_NAME"
tmux send-keys -t "$TAB_WF_NAME.0" 'wf' Enter
tmux send-keys -t "$TAB_WF_NAME.1" 'kc' Enter
tmux send-keys -t "$TAB_WF_NAME.2" 'wfzw' Enter
tmux send-keys -t "$TAB_WF_NAME.3" 'pamock' Enter
tmux send-keys -t "$TAB_WF_NAME.4" 'ecmmock' Enter
tmux send-keys -t "$TAB_WF_NAME.5" 'dapmock' Enter

# Start Scripts session
tmux new -s Scripts -d -n Mouse-Accel zsh
tmux new-window -n Check-Deployments zsh
tmux select-window -t Mouse-Accel
tmux send-keys -t "Mouse-Accel" '~/bin/mouse-accel.sh' Enter
tmux send-keys -t "Check-Deployments" '~/bin/check-deployments.sh' Enter

# Attach to Main
tmux attach -t Main
