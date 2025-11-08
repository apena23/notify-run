set -euo pipefail

SCRIPT_DIR=$(pwd)

echo "Directory for logfiles and job tables (leave blank for $HOME/notify-run):"
read BASE_DIR
echo "Email (leave blank to omit emails):"
read EMAIL
echo "System name (leave blank for /etc/hostname):"
read SYS_NAME

grep "# notify-run" ~/.bashrc || echo "# notify-run"$'\n'"source $SCRIPT_DIR/.init" >> ~/.bashrc

:> .init

echo """
export PATH=\$PATH:$SCRIPT_DIR
export NR_EMAIL=$EMAIL
""" >> .init

if [ ! -z "$BASE_DIR" ]; then
    echo "export NR_BASEDIR=$BASE_DIR" >> .init
fi

if [ ! -z "$SYS_NAME" ]; then
    echo "export NR_SYSNAME=$SYS_NAME" >> .init
fi

. .init
