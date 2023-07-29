## How to use this?

### QUICKSTART

Run this to autoinstall and setup everything effortlessly.
```
curl -sSf https://raw.githubusercontent.com/geloman-likes-rust/dotfiles/main/quickstart | sh
```

### uninstallation

This will uninstall [everything](uninstall.sh)
```
~/.dotfiles/uninstall.sh
```

![debian](https://img.shields.io/badge/debian-D14D72?style=for-the-badge&logo=debian&logoColor=white)
![fedora](https://img.shields.io/badge/fedora-19376D?style=for-the-badge&logo=fedora&logoColor=fff)
![arch](https://img.shields.io/badge/arch-0B2447?style=for-the-badge&logo=archlinux&logoColor=19A7CE)
![tmux](https://img.shields.io/badge/tmux-393646?style=for-the-badge&logo=tmux&logoColor=fff)
![lua](https://img.shields.io/badge/lua-62CDFF?style=for-the-badge&logo=lua&logoColor=19376D)
![bash](https://img.shields.io/badge/bash-1B2430?style=for-the-badge&logo=gnu-bash&logoColor=fff)
![neovim](https://img.shields.io/badge/neovim-62CDFF?style=for-the-badge&logo=neovim&logoColor=2B7A0B)

## `handy-scripts` user-friendly guide

before using all of my handy scripts, u must have all of these tools installed on your machine:

### some prerequisite tools:

- [**`nvim`**](https://github.com/neovim/neovim) - neovim
- [**`rg`**](https://github.com/BurntSushi/ripgrep) - ripgrep
- [**`fd`**](https://github.com/sharkdp/fd) - fd-find
- [**`fzf`**](https://github.com/junegunn/fzf) - fuzzy finder
- [**`bat`**](https://github.com/sharkdp/bat) - clone of cat but with syntax highlighting
- [**`delta`**](https://github.com/dandavison/delta) - git-delta

### handy-scripts:

- **`fvi`** - find files recursively and opens it in neovim.

    - Default keymaps:
        - **`<cr>`**:    opens the selected file.
        - **`<c-k>`**:   move the selection to the previous entry.
        - **`<c-j>`**:   move the selection to the next entry.

- **`dirty`** - show all modified/untracked files in your project and open the selected file in vim.

    - Default keymaps:
        - **`<cr>`**:    opens the selected file.
        - **`<c-k>`**:   move the selection cursor upward.
        - **`<c-j>`**:   move the selection cursor downward.

- **`fast-remove`** - fast remove any file or directory.

    - Default keymaps:
        - **`c-k>`**:   move the selection cursor upward.
        - **`c-j>`**:   move the selection cursor downward.

- **`fast-cd`** - fast change directory when u press **`ctrl+o`**.

    - Default keymaps:
        - **`<cr>`**:   cd to selected directory.
        - **`<c-k>`**:  move the selection cursor upward.
        - **`<c-j>`**:  move the selection cursor downward.

    - add this on your `.bashrc` if your default shell is bash:
    ```sh
    fast_cd() {
      selected=$(fast-cd); [[ -z $selected ]] || cd $selected
    }
    bind '"\C-o": "fast_cd; clear\n"'
    ```

    - add this on your `.zshrc` if your default shell is zsh:
    ```sh
    function fast_cd() {
        selected=$(fast-cd); [[ -z $selected ]] || cd $selected
    }
    bindkey -s ^o "fast_cd; clear\n"
    ```

- **`git-status`** - docs coming soon

- **`git-add`** - docs coming soon

- **`git-unstage-file`** - docs coming soon

- **`git-checkout`** - docs coming soon

- **`live-grep`** - docs coming soon

- **`randbg`** - docs coming soon

- **`setbg`** - docs coming soon

- **`se`** - docs coming soon

- **`switch_shell`** - docs coming soon

- **`tmux-sessionizer`** - docs coming soon
