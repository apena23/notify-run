# notify-run

Simple Linux utility for running jobs in the background, with email notification on completion.

Job output is saved into logfiles that can be accessed at any time.

Sending emails requires `mailx` installed.

## Installation

```
cd $HOME
git clone https://github.com/apena23/notify-run
cd notify-run
bash install.sh
```

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
