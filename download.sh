#!/bin/bash

COMPOSER_VERSION=2.6.6

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

arch=$(uname -m | tr '[A-Z]' '[a-z]')


case $(uname) in
    Linux*)     machine=linux;;
    Darwin*)    machine=mac;;
    *)          machine='unknown';;
esac

if [ "$machine" == "unknown" ]; then
    echo "Unsupported operating system. This script only supports Linux and Mac."
    exit 1
fi

DOWNLOAD_URL="https://github.com/dunglas/frankenphp/releases/download/v1.0.0/frankenphp-${machine}-${arch}"

echo "DOWNLOAD_URL: ${DOWNLOAD_URL}"

FILENAME="${SCRIPT_DIR}/frankenphp"

echo "Downloading ${FILENAME}..."
wget -q -O "${FILENAME}" "${DOWNLOAD_URL}" || { echo "Failed to download FrankenPHP."; exit 1; }

if [ $? -eq 0 ]; then
  echo "Download complete. Extracting files..."
  tar xf "${FILENAME}" --strip-components=1 -C "${SCRIPT_DIR}" || { echo "Failed to extract FrankenPHP."; exit 1; }
  rm "${FILENAME}"
  echo "Extraction complete. Installed file saved as ${SCRIPT_DIR}/frankenphp"
else
  echo "Download failed."
  exit 1
fi

chmod +x "${SCRIPT_DIR}/frankenphp"

echo "Downloading composer..."
wget -q -O "${SCRIPT_DIR}/composer.phar" "https://getcomposer.org/download/${COMPOSER_VERSION}/composer.phar" || { echo "Failed to download Composer."; exit 1; }
echo "Download complete composer."

exit 0
