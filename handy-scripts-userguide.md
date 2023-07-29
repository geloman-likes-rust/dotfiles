## `handy-scripts` user-friendly guide

before using all of my handy scripts, u must have all of these tools installed on your machine:

### some prerequisite tools:

- [**`nvim`**](https://github.com/neovim/neovim) - neovim
- [**`rg`**](https://github.com/BurntSushi/ripgrep) - ripgrep
- [**`fd`**](https://github.com/sharkdp/fd) - fd-find
- [**`fzf`**](https://github.com/junegunn/fzf) - fuzzy finder
- [**`bat`**](https://github.com/sharkdp/bat) - clone of cat but with syntax highlighting
- [**`delta`**](https://github.com/dandavison/delta) - git-delta

### handy-scripts user guide:

- [**`fvi`**](handy-scripts/fvi) - find files recursively and opens it in neovim.

    - Default keymaps:
        - **`<cr>`** : opens the selected file.
        - **`<c-k>`** : move the selection cursor upward.
        - **`<c-j>`** : move the selection cursor downward.


- [**`dirty`**](handy-scripts/dirty) - show all modified/untracked files in your project directory and open the selected file in vim.

    - Default keymaps:
        - **`<cr>`** : opens the selected file.
        - **`<c-k>`** : move the selection cursor upward.
        - **`<c-j>`** : move the selection cursor downward.


- [**`fast-remove`**](handy-scripts/fast-remove) - fast remove any file or directory.

    - Default keymaps:
        - **`c-k>`** :   move the selection cursor upward.
        - **`c-j>`** :   move the selection cursor downward.


- [**`fast-cd`**](handy-scripts/fast-cd) - fast change directory when u press **`ctrl+o`**.

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

- [**`git-status`**](handy-scripts/git-status) - docs coming soon

- [**`git-add`**](handy-scripts/git-add) - docs coming soon

- [**`git-unstage-file`**](handy-scripts/git-unstage-file) - docs coming soon

- [**`git-checkout`**](handy-scripts/git-checkout) - docs coming soon

- [**`live-grep`**](handy-scripts/live-grep) - docs coming soon

- [**`randbg`**](handy-scripts/randbg) - docs coming soon

- [**`setbg`**](handy-scripts/setbg) - docs coming soon

- [**`se`**](handy-scripts/se) - docs coming soon

- [**`switch_shell`**](handy-scripts/switch_shell) - docs coming soon

- [**`tmux-sessionizer`**](handy-scripts/tmux-sessionizer) - docs coming soon
