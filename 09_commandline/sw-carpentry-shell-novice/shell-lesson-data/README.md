 1. Update your local repository using "pull" in github desktop. Then navigate to "09_commandline/sw-carpentry-shell-novice

Go to [this link](https://swcarpentry.github.io/shell-novice/03-create/index.html#moving-files-and-directories) to follow along with the lesson that uses these datasets.

**Zsh people** If your prompt is now too long (like mine was), do the following:
```
oldPS1="$PS1"
PS1="%B%F{blue}%n@%m%f%b %3d %# "
```

This will only show the trailing 3 directories by using `%3d` instead of `/` in the code. The `/` is shorthand for full current directory. It only has this meaning in the prompt.
