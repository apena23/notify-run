# notify-run

Simple utility for running jobs with email notification on completion.

Sending emails requires `mailx` installed.

## Installation

1. Download the script into some directory (e.g. `$HOME/scripts`) and give yourself exec permissions.
2. Copy the following to your `~/.bashrc` and edit the variables in []

```
# notify-run
export PATH=$PATH:[PATH_TO_SCRIPT_DIRECTORY]
export NR_EMAIL=[YOUR_EMAIL]
# Uncomment these lines to change other options:
# NR_BASEDIR=[BASE_DIR]     # directory for logfiles and job tables, if not $HOME/notify-run
# NR_SYSNAME=[SYSNAME]      # system name for email notifications, if not /etc/hostname
```

3. In terminal run `source ~/.bashrc`

## Usage
```
notify-run [options] COMMAND...

Run COMMAND in the background, logging to a logfile generated using the timestamp and a job name.
When done, send an email to the address in $NR_EMAIL.

Options:
    -E       omit email notification
    -f N     show last N jobs finished
    -h       show help text
    -l       show running jobs
    -n name  give your job a name
    -r       read logfile for most recently started job using less
    -s N     show last N jobs started
```
