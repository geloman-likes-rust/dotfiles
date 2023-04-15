#!/bin/bash

bash ./link-dotfiles.sh
ln -s ~/.dotfiles/bash_load_files.sh
echo "source bash_load_files.sh" >> ~/.bashrc
