#window_root "~/Sites"
new_window "editor"

# Split window into panes
split_v 20

run_cmd "vim" 1

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into pane 1

select_pane 2
