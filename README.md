# Wannier90 for Vim
## Install
### Manual Setup
If there are not syntax and ftdetect directory, please make them.  
```
cp ./wannier.vim          ~/.vim/syntax/wannier.vim
cp ./wannier-detect.vim   ~/.vim/ftdetect/wannier-detect.vim
```

# param2vim.py
You may not use this script. So, the details are omitted.<br>
<br>
To use param2vim.py, you must have
+ quantum_espresso-vim(https://github.com/leseixas/quantum_espresso-vim/syntax/espresso.vim)
+ Wannier90-Userguide($wannier90/doc/parameters.tex) 

<p>
With using these file, wannier.vim can be made.
The created wannier.vim include only namelist, so it is not completed.
</p>
