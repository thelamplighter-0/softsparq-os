#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
# echo 'This is an example shell script'
# echo 'Scripts here will run during build if specified in recipe.yml'
# Add fish to /etc/shells if not present
if ! grep -q "/usr/bin/fish" /etc/shells; then
  echo "/usr/bin/fish" >> /etc/shells
fi
# Set default shell for the main user (adjust username as needed)
# Note: For bootc, users are often created at first boot,
# so you may need to set this in /etc/default/useradd or via a systemd unit.
