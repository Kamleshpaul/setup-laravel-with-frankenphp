#!/bin/bash

COMPOSER_VERSION=2.6.6

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

case $(uname) in
    Linux*)     machine=linux;;
    Darwin*)    machine=mac;;
    *)          machine='unknown';;
esac

if [ "$machine" == "unknown" ]; then
    echo "Unsupported operating system. This script only supports linux and mac."
    exit 1
fi

DOWNLOAD_URL="https://github.com/dunglas/frankenphp/releases/download/v1.0.0/frankenphp-$machine-x86_64"

FILENAME="$SCRIPT_DIR/frankenphp"

echo "Downloading $FILENAME..."
wget -O "$FILENAME" "$DOWNLOAD_URL"

if [ $? -eq 0 ]; then
  echo "Download complete. Saved as $FILENAME"
else
  echo "Download failed."
  exit 1
fi

chmod +x "$FILENAME"

echo "Downloading composer."
wget -O "$SCRIPT_DIR/composer.phar" "https://getcomposer.org/download/$COMPOSER_VERSION/composer.phar"
echo "Download complete composer."

exit 0
