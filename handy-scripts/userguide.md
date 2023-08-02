## [`handy-scripts`](bin) user-friendly guide

before using all of my handy scripts, u must have all these tools installed on your machine:

### some prerequisite tools:

- [**`nvim`**](https://github.com/neovim/neovim) - neovim
- [**`rg`**](https://github.com/BurntSushi/ripgrep) - ripgrep
- [**`fd`**](https://github.com/sharkdp/fd) - fd-find
- [**`fzf`**](https://github.com/junegunn/fzf) - fuzzy finder
- [**`bat`**](https://github.com/sharkdp/bat) - clone of cat but with syntax highlighting
- [**`delta`**](https://github.com/dandavison/delta) - git-delta

### handy-scripts user guide:

- [**`find-files`**](bin/find-files) - find files recursively and opens it in neovim.

    - Default keymaps:
        - **`<cr>`** : opens the selected file.
        - **`<c-k>`** : move the selection cursor upward.
        - **`<c-j>`** : move the selection cursor downward.


- [**`dirty`**](bin/dirty) - show all modified/untracked files in your project directory and open the selected file in neovim.

    - Default keymaps:
        - **`<cr>`** : opens the selected file.
        - **`<c-k>`** : move the selection cursor upward.
        - **`<c-j>`** : move the selection cursor downward.


- [**`fast-remove`**](bin/fast-remove) - fast remove any file or directory.

    - Default keymaps:
        - **`c-k>`** :   move the selection cursor upward.
        - **`c-j>`** :   move the selection cursor downward.


- [**`fast-cd`**](bin/fast-cd) - fast change directory when u press **`ctrl+o`**.

    - Default keymaps:
        - **`<cr>`** :   cd to selected directory.
        - **`<c-k>`** :  move the selection cursor upward.
        - **`<c-j>`** :  move the selection cursor downward.

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

- [**`git-status`**](bin/git-status) - syntax highlighted and shorter git status.

- [**`git-add`**](bin/git-add) - docs coming soon

- [**`git-unstage-file`**](bin/git-unstage-file) - docs coming soon

- [**`git-checkout`**](bin/git-checkout) - docs coming soon

- [**`live-grep`**](bin/live-grep) - docs coming soon

- [**`randbg`**](bin/randbg) - randomly change current wallpaper background.

- [**`setbg`**](bin/setbg) - set wallpaper background.

- [**`se`**](bin/se) - docs coming soon

- [**`switch_shell`**](bin/switch_shell) - docs coming soon

- [**`tmux-sessionizer`**](bin/tmux-sessionizer) - docs coming soon
