# Below are some most common commands for managing Tmux windows and panes:

# list sessions
tmux ls

# kill session
tmux kill-session -t <id>

# detach client
tmux detach-client

# attach client
tmux attach

# kill pane
tmux kill-pane <id>

# scroll within pane 
Ctrl+b [

# show pane ids
Ctrl+b q

# create a new window (with shell)
Ctrl+b c 

# choose window from a list
Ctrl+b w 

# switch to window 0 (by number )
Ctrl+b 0 

# swap pane
tmux swap-pane -s <source> -t <target>

# rename the current window
Ctrl+b , 

# go to the next pane
Ctrl+b o 

# toggle between the current and previous pane
Ctrl+b ; 

# close the current pane
Ctrl+b x 

# split current pane horizontally into two panes
Ctrl+b % 

# split current pane vertically into two panes
Ctrl+b "
