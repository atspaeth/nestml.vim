# nestml.vim
Vim configuration for writing NEST models in NESTML.

I'm not trying to make an extremely full-featured development
environment here, so I just created the bare minimum files in order to
feel like vim supports the language. So far there are two files: 
 - `syntax/nestml.vim` is a rough syntax highlighting file for
   keywords and units, which also sets commentstring so Tim Pope's
   [plugin](https://github.com/tpope/vim-commentary) `commentary.vim`
   will correctly handle line comments.
 - `ftdetect/nestml.vim` identifies the NESTML filetype by the extension `.nestml`.

## Installation

You should be able to clone this into your vim packages directory. If
you're using neovim, use `VIMDIR=~/.config/nvim` below, or for the
original vim it would be `VIMDIR=~/.vim`.

```bash
mkdir -p $VIMDIR/pack/atspaeth/start
cd $VIMDIR/pack/atspaeth/start
git clone https://github.com/atspaeth/vim-nestml
```
