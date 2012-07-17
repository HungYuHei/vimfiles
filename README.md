# HungYuHei's vimrc

## Installtion

### 1. Backup your original vim files

```
mv ~/.vimrc ~/.vimrc_backup
mv ~/.vim ~/.vim_backup
```

### 2. Check out from github

```
git clone git://github.com/HungYuHei/vimfiles.git ~/.vim
```

### 3. Install ~/.vimrc

```
ln -s ~/.vim/vimrc ~/.vimrc
```

### 4. Install dependents

######Mac(homebrew) :

```
$ brew install ctags
$ brew install ack
```

######Ubuntu :

```
$ sudo apt-get install ctags
$ sudo apt-get install ack-grep
```

### 5. Fetch submodules

```
cd ~/.vim
git submodule init
git submodule update
```

That's it, enjoy!
please let me know if you have any issues.

## Keyboard shortcuts

**Please keep your mind that `<leader>` is set to `,`**

* `<F7>` Toggle NERDTreeFind
* `<F8>` Toggle NERDTree
* `<F9>` Toggle TagList
* `<F10>` Toggle paste mode
* `<leader><leader>` Trig EasyMotion (e.g. `<leader><leader>w` `<leader><leader>f` etc.)
* `<leader>s` Horizontally split window
* `<leader>v` Vertically split window
* `Ctrl[hjkl]` Move between windows (left down up right)

* `<leader>a` `:Ack`
* `<leader>v` Reselect the text that was just pasted
* `<leader>W` Strip all trailing whitespace in the current file
* `<leader>lc` Toggle highlight cursor column
* `<leader>ll` Toggle highlight cursor line
* `<leader>ms` Display 80-column indication
* `<leader>mh` Hide 80-column indication
* `<leader>be` Toggle BufExplorer
* `<leader>c<space>` Toggle NERDCommenter

**Please reference to the plugin's homepage below to see more shortcuts**

## Plugins

* [The NERD tree](http://www.vim.org/scripts/script.php?script_id=1658) : A tree explorer plugin for navigating the filesystem
* [vim-surround](http://www.vim.org/scripts/script.php?script_id=1697) : Plugin for deleting, changing, and adding "surroundings"
* [BufExplorer](http://www.vim.org/scripts/script.php?script_id=42) : Quickly and easily switch between buffers
* [NERDCommenter](http://www.vim.org/scripts/script.php?script_id=1218) : A plugin that allows for easy commenting of code for many filetypes
* [snipMate](http://www.vim.org/scripts/script.php?script_id=2540) : TextMate-style snippets for Vim
* [TagList](http://www.vim.org/scripts/script.php?script_id=273) : Provide an overview of the structure of source code files
* [git-vim](https://github.com/motemen/git-vim) : Call git functions from inside Vim
* [ack](http://www.vim.org/scripts/script.php?script_id=2572) : integrates Ack with Vim’s quickfix window so you can easily search and jump to results
* [rails](http://www.vim.org/scripts/script.php?script_id=1567) : Ruby on Rails: easy file navigation, enhanced syntax highlighting, and more
* [AutoComplPop](http://www.vim.org/scripts/script.php?script_id=1879) : Automatically opens popup menu for completions
* [delimitMate](http://www.vim.org/scripts/script.php?script_id=2754) : Provides auto-balancing and some expansions for parens, quotes, etc. 
* [matchit](http://www.vim.org/scripts/script.php?script_id=39) : Extended % matching for HTML, LaTeX, and many other languages
* [vim-css-color](https://github.com/skammer/vim-css-color) : Highlight colors in css files
* [EasyMotion](https://github.com/Lokaltog/vim-easymotion) : Vim motions on speed

## Screenshot

![vim-screenshot](http://pic.yupoo.com/hungyuhei/BHzoc9O8/medish.jpg)
