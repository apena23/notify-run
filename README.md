# notify-run

Simple utility for running jobs with email notification on completion.

## Installation

1. Copy the script into a directory, give yourself exec permissions, and add to PATH.
2. Edit the script to use your email address.

## Usage

`notify-run "command" {name}`

If no name, one will be created based on the first word of the command.

`notify-run -r` Open the log file for the most recently started job.

`notify-run -l` Print running jobs.

`notify-run -s{N}` Print N recently started jobs.

`notify-run -f{N}` Print N recently finished jobs.
