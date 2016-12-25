session_root "~/Projects/lb"
if initialize_session "lb"; then
  load_window "lb/lbapi"
  load_window "lb/lbpro"
  load_window "lb/lblogs"

  select_window 1
fi

finalize_and_go_to_session
