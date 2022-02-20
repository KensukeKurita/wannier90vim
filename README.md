# Wannier90 for Vim

This is vim syntax plugin for [Wannier90](http://www.wannier.org).
If you write a Wannier90 input, this syntax will help you.
![sample](./README-imag/sample.png)

I made this with reference to [quantum_espresso-vim](https://github.com/leseixas/quantum_espresso-vim).
Please check the package when you see the source codes in this plugin.

## Install

If there are not syntax and ftdetect directory under `./.vim/`, please make them.

```sh
cp ./syntax/wannier.vim             ~/.vim/syntax/wannier.vim
cp ./ftdetect/wannier-detect.vim    ~/.vim/ftdetect/wannier-detect.vim
```

## About `param2vim.py`

The details about `param2vim.py` are omitted since you may not use this script.

To use `param2vim.py`, one should have:

- quantum_espresso-vim plugin
- Wannier90 userguide in Wannier90 homepage

One can create`wannier.vim` using `param2vim.py` alongwith these file, but `wannier.vim` includes only namelist of `*.win` file.

