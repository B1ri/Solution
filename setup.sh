#!/usr/bin/env bash

# This script prepares the environment and dependencies for the installation and configuration of Orthanc DICOM server using Ansible playbook.
set -eu

echo "Checking environment."

if ! command -v apt-get >/dev/null 2>&1; then
  echo "Sorry, this script requires Debian/Ubuntu-based system with apt."
  exit 1
fi
DIR="$(cd "$(dirname "${BASH_SOURCE}")" && pwd)"


echo "Preparing dependencies."

if command -v ansible >/dev/null 2>&1; then
  echo "Ansible is already installed."
else
  sudo apt update
  echo "Installing Ansible."
  sudo apt install -y ansible
fi

echo "Calling playbook script."


if [ -f "$DIR/dicom_playbook.yml" ]; then
  sudo ansible-playbook -i "localhost," -c local "$DIR/dicom_playbook.yml" --ask-become-pass
  else
  echo "You need to have dicom_playbook.yml placed in same directory as setup bash file"
  exit 1
fi