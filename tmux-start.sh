#!/bin/bash
# Start Main session
TAB_MAIN_NAME="🏬 Main"
TAB_WF_NAME="🪰 WF"
PANE_MAIN=$(tmux new -s Main -P -F "#{pane_id}" -d -n "$TAB_MAIN_NAME" zsh)
PANE_WF=$(tmux new-window -P -F "#{pane_id}" -n "$TAB_WF_NAME" zsh)
tmux splitw -v -l "50%" zsh
tmux select-pane -t 0
tmux splitw -h -l "50%" zsh
tmux select-pane -t 2
tmux splitw -h -l "40%" zsh
tmux splitw -h -l "50%" zsh
tmux splitw -v -l "50%" zsh
tmux select-pane -t 0
tmux select-window -t "$TAB_MAIN_NAME"
tmux send-keys -t "$TAB_WF_NAME.0" 'wf' Enter
tmux send-keys -t "$TAB_WF_NAME.1" 'kc' Enter
tmux send-keys -t "$TAB_WF_NAME.2" 'wfzw' Enter
tmux send-keys -t "$TAB_WF_NAME.3" 'cibseven' Enter
tmux send-keys -t "$TAB_WF_NAME.4" 'ecmmock' Enter
tmux send-keys -t "$TAB_WF_NAME.5" 'dapmock' Enter

# Attach to Main
tmux attach -t Main
