# dotfile

Clone this repository to `~/.dotfiles`

First time run:

```bash
sh .dotfiles/mac
```

Add customizations to the following files:

```
.zshrc.local
.gitconfig.local
.aliases.local
```

For example: If you want to use a different them from `oh-my-zsh` you can overwrite the 
`antigen theme avit` within your `.zshrc.local`.

Alternatively, if you have heavy customizations, place your own dotfiles within a `~/.dotfiles-local` to take
precidence over the files of the same name. For example, `~/.dotfiles-local/zshrc` will be used instead of the
one found within `~/.dotfiles/zshrc`. The files will not be merged.

