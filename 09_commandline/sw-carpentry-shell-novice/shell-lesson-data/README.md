# Setup

## Windows linux subsystem users
Open a terminal.

```
git clone https://github.com/Colorado-State-University-CMB/CM580A3-Intro-to-qCMB-2023.git
cd 09_commandline/sw-carpentry-shell-novice
```


## Alpine users

```
cd /projects/$USER
git clone https://github.com/Colorado-State-University-CMB/CM580A3-Intro-to-qCMB-2023.git
cd 09_commandline/sw-carpentry-shell-novice
```

## Mac users
 1. Update your local repository using "pull" in github desktop. Then navigate to "09_commandline/sw-carpentry-shell-novice
 2. Go to [this link](https://swcarpentry.github.io/shell-novice/03-create/index.html#moving-files-and-directories) to follow along with the lesson that uses these datasets.


## If your prompt is too long (like mine was)

You can temporarily change your prompt to shorten the number of trailing directories of your current directory to display.

### **Zsh people** 
```
oldPS1="$PS1"
PS1="%B%F{blue}%n@%m%f%b %3d %# "
```

This will only show the trailing 3 directories by using `%3d` instead of `/` in the code. The `/` is shorthand for full current directory. It only has this meaning in the prompt.

### bash
```
oldPS1="$PS1"
PS1=" [\u@\h \W]\$ "
```

You will have to do this every time you open a new shell.
