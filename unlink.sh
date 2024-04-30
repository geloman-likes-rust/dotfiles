#!/bin/sh

# UNLINK ALL OF MY CONFIGS
find ~ ~/.config -maxdepth 1 -type l \
    | xargs -I {} sh -c 'unlink {}'

# GETTING BACK TO NORMAL
find ~/.config -maxdepth 1 -type d \
    | grep .bak$ \
    | sed 's/.bak//' \
    | xargs -I {} sh -c 'mv {}.bak {}'

find ~/.config/Code/User -maxdepth 2 -type f,d \
    | grep .bak$ \
    | sed 's/.bak//' \
    | xargs -I {} sh -c 'mv {}.bak {}'

