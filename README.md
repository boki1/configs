## Configuration ⚙️

This repository includes my setup for my editor, shell, window manager and other things which I would like to keep a history of. I most often update my Vim configuration (which is my editor of choice). Most of the dependencies, other than the specific component which is configured, are self-contained. One notable exception to that rule is [`fzf`](https://github.com/junegunn/fzf). I will try to keep a list here for future reference:

One "rule" that I will try to follow is that I do not keep configurations which I am not using (I am already breaking this one :smile:). For example, I recently moved back from neovim to good old regular vim, thus I have removed the `nvim` directory. The rationale for that is based on the fact that I am keeping these dotfiles using `git` which makes them easily _trackable_ and _reversible_.

**Dependencies**
- fzf
- some of the necessary file organization since some paths are hardcoded for now


**Useful utilities**
_Other tools which I use_
- [vim-plugins-profiler](https://github.com/hyiltiz/vim-plugins-profile) - very useful

---

**Side note**: Although one of the directories says `windowman`, as I am not currently using one (yeah, I know :disappointed:), I haven't actually put the `bspwm` config that I am planning on bringing up in the near future :smile:.