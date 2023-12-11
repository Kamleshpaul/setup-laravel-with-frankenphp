#!/bin/bash

COMPOSER_VERSION=2.6.6

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z "$1" ]; then
  echo "Usage: $0 <os>"
  echo "Specify 'linux' or 'mac' as the OS parameter."
  exit 1
fi

if [ "$1" == "linux" ]; then
  DOWNLOAD_URL="https://github.com/dunglas/frankenphp/releases/download/v1.0.0/frankenphp-linux-x86_64"
elif [ "$1" == "mac" ]; then
  DOWNLOAD_URL="https://github.com/dunglas/frankenphp/releases/download/v1.0.0/frankenphp-mac-arm64"
else
  echo "Unsupported OS. Specify 'linux' or 'mac' as the OS parameter."
  exit 1
fi

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
