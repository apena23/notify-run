# notify-run

Simple utility for running jobs with email notification on completion.

Usage:

`notify-run "command" {name}`

If no name, one will be created based on the first word of the command.

`notify-run -r` Open the log file in real time.

`notify-run -l` Print running jobs.

`notify-run -s{N}` Print N recently started jobs.

`notify-run -f{N}` Print N recently finished jobs.
