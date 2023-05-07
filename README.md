## Configuration ⚙️

This repository includes my setup for my editor, shell, window manager and
other things which I would like to keep a history of. I most often update my
Vim configuration (which is my editor of choice). Most of the dependencies,
other than the specific component which is configured, are self-contained.
One notable exception to that rule is [`fzf`](https://github.com/junegunn/fzf).
I will try to keep a list here for future reference.

One "rule" that I will try to follow is that I do not keep configurations which
I am not using (I am already breaking this one :smile:). For example, I
recently moved back from neovim to good old regular vim, thus I have removed
the `nvim` directory. The rationale for that is based on the fact that I am
keeping these dotfiles using `git` which makes them easily _trackable_ and
_reversible_.

**Dependencies**
- fzf
- some of the necessary file organization since some paths are hardcoded for
now

----

**Future reference**

_Other useful tools_
- [vim-plugins-profiler](https://github.com/hyiltiz/vim-plugins-profile) - Detect plugins which slow down the startup of Vim

*Setting up CoC*

Installing the necessary LSPs:
```vim
:CocInstall coc-clangd coc-vimlsp coc-cmake coc-sh
```

*Setting up zsh*

On initial startup no actual change will be noticed before the plugins
are installed. This I have set to happen manually, thus you have to
execute the following command:
```zsh
$ zplug install
```

----

## To do

Although one of the directories says `windowman`, as I am not
currently using one (yeah, I know :disappointed:), I haven't actually put the
`bspwm` config that I am planning on bringing up in the near future :smile:.

- [ ] Switch back to `bspwm`.

----

Try setting up a "better Arduino IDE" inside Vim. When doing
that

- [ ] Try out [Arduino Language Server](https://github.com/arduino/arduino-language-server) with CoC.

----

- [ ] Setup local LaTeX editing environment with previewing in zathura.
- [ ] Try out the [LaTeX language server](https://github.com/neoclide/coc.nvim/wiki/Language-servers#latex) usable with CoC

