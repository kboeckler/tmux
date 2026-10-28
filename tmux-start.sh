#!/bin/bash
# The tmux server snapshots this environment into every pane. When launched from
# inside Claude Code it would inherit GIT_EDITOR=true (git commit opens no editor)
# and the CLAUDE* session vars (every claude in tmux becomes a child session).
unset GIT_EDITOR "${!CLAUDE@}"

# Start Main session
TAB_MAIN_NAME="🏬 Main"
TAB_WF_NAME="🐱🪰🐳 Services"
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
PANE_CLAUDE=$(tmux new-window -P -F "#{pane_id}" zsh)
tmux send-keys -t "$PANE_CLAUDE" 'claude' Enter
tmux select-window -t "$TAB_MAIN_NAME"
tmux send-keys -t "$TAB_WF_NAME.0" 'tom' Enter
tmux send-keys -t "$TAB_WF_NAME.1" 'kc' Enter
tmux send-keys -t "$TAB_WF_NAME.2" 'wfzw' Enter
tmux send-keys -t "$TAB_WF_NAME.3" 'cibseven' Enter
tmux send-keys -t "$TAB_WF_NAME.4" 'ecmmock' Enter
tmux send-keys -t "$TAB_WF_NAME.5" 'dapmock' Enter

# Attach to Main
tmux attach -t Main
