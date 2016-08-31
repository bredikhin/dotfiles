new_window "lblogs"
window_root "~/Projects/ct/lb"
split_v 50
run_cmd "tail -f ./lb/app/tmp/logs/error.log"
select_pane 2
run_cmd "tail -f ./lbapi/app/log/app.log"
