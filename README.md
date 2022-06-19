# Vim syntax highlighting plugin for Wannier90

This is vim syntax plugin for [Wannier90](http://www.wannier.org).
If you write a Wannier90 input, this syntax will help you.

![sample](https://user-images.githubusercontent.com/33048775/174470616-2fbf21ee-1d84-4a8b-9be7-6b5eeafd4dcf.png)

I made this with reference to [quantum_espresso-vim](https://github.com/leseixas/quantum_espresso-vim).  Please check the package when you see the source codes in this plugin.
## Install

### For Vim 8.0+

Vim 8.0+ recognizes plugins under `$HOME/.vim/pack/**/start`.

```sh
% git clone https://github.com/KensukeKurita/wannier90vim.git $HOME/.vim/pack/**/start
```

### Old Vim

Vim recognizes plugins for syntax highlighting under `$HOME/.vim/syntax` and `$HOME/.vim/ftdetect`.

```sh
% git clone https://github.com/KensukeKurita/wannier90vim.git
% mkdir -p $HOME/.vim/syntax $HOME/.vim/ftdetect
% cp ./syntax/wannier.vim             $HOME/.vim/syntax/wannier.vim
% cp ./ftdetect/wannier-detect.vim    $HOME/.vim/ftdetect/wannier-detect.vim
```

## About `param2vim.py`

The details about `param2vim.py` are omitted since you may not use this script.

To use `param2vim.py`, one should have:

- quantum_espresso-vim plugin
- Wannier90 userguide in Wannier90 homepage

One can create`wannier.vim` using `param2vim.py` alongwith these file, but `wannier.vim` includes only namelist of `*.win` file.

