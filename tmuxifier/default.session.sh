session_root "~/Projects"
if initialize_session "default"; then
  new_window "default"
  split_v 50
  select_pane 1
  split_h 50
  select_pane 3
  split_h 50
  select_pane 1
fi

finalize_and_go_to_session
