# Below are some most common commands for managing Tmux windows and panes:

# list sessions
tmux ls

# kill session
tmux kill-session -t <id>

# detach client
tmux detach-client

# attach client
tmux attach

# Create a new window (with shell)
Ctrl+b c 

# Choose window from a list
Ctrl+b w 

# Switch to window 0 (by number )
Ctrl+b 0 

# Rename the current window
Ctrl+b , 

# Go to the next pane
Ctrl+b o 

# Toggle between the current and previous pane
Ctrl+b ; 

# Close the current pane
Ctrl+b x 

# Split current pane horizontally into two panes
Ctrl+b % 

# Split current pane vertically into two panes
Ctrl+b "
