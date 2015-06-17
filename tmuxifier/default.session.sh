session_root "~/Sites"
if initialize_session "default"; then
  load_window "default"

  # Select the default active window on session creation.
  #select_window 1
fi

finalize_and_go_to_session
