#!/usr/bin/env bash

# Run the common post-create script.
../.devcontainer/post-create.sh

# Create a virtual environment for the project if one doesn't exist.
if [ ! -d ".venv" ]; then
    python3 -m venv .venv
fi

# Activate the virtual environment.
echo "source \"$(pwd)/.venv/bin/activate\"" >> ~/.bashrc