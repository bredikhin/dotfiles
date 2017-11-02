session_root "~/Projects/ct"
if initialize_session "ct"; then
  new_window "ct"
  split_v 10
  select_pane 2
fi

finalize_and_go_to_session
