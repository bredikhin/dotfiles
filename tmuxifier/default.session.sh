session_root "~/Sites"
if initialize_session "default"; then
  new_window "default"

  run_cmd "ll"

  # Select the default active window on session creation.
  #select_window 1
fi

finalize_and_go_to_session
