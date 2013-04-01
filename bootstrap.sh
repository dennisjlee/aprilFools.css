#!/bin/sh

# bash -c "$(curl -fsSL https://raw.github.com/dennisjlee/aprilFools.css/master/bootstrap.sh)"

if [ "$1" = "linux" ] ; then
  DEST="$HOME/.config/chromium/Default/User StyleSheets/Custom.css"
else
  DEST="$HOME/Library/Application Support/Google/Chrome/Default/User StyleSheets/Custom.css"
fi
# Don't worry about windows

DIR=$(dirname "$DEST")
mkdir -p "$DIR"
curl -fsSL https://raw.github.com/dennisjlee/aprilFools.css/master/aprilFools.css > "$DEST"
vi "$DEST"
