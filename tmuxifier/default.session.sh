session_root "~/Projects"
if initialize_session "default"; then
  new_window "default"
  split_h 50
  split_v 50
  select_pane 2
  split_v 50
  select_pane 1
fi

finalize_and_go_to_session
