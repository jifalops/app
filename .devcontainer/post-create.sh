#!/usr/bin/env bash

SERVICE_NAME=$(basename "$PWD")

# Remember bash history on the local machine.
ln -s "$(pwd)/../.devcontainer/$SERVICE_NAME/.bash_history" ~/.bash_history

# Install the user's dotfiles from GitHub.
gh repo clone dotfiles ~/dotfiles && ~/dotfiles/install.sh

# Create .env if necessary.
if [ -f .env.example ] && [ ! -f .env ]; then
  cp .env.example .env
fi
