#!/bin/bash
tmux new -s Main -d -n MainWin
tmux splitw -h -p 50
tmux attach -t Main
