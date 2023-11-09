#!/usr/bin/env bash
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

# Allow users to override command-line options
USER_FLAGS_FILE="$XDG_CONFIG_HOME/brave-beta-flags.conf"
if [[ -f $USER_FLAGS_FILE ]]; then
    USER_FLAGS="$(cat $USER_FLAGS_FILE | sed 's/#.*//')"
fi

if [[ -z $CHROME_USER_DATA_DIR ]]; then
    export CHROME_USER_DATA_DIR="$HOME/.config/BraveSoftware/Brave-Browser-Beta"
fi

export CHROME_VERSION_EXTRA="beta"

exec /opt/brave-beta-bin/brave "$USER_FLAGS" "$@"
