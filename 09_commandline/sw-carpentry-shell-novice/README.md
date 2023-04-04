# Setup

 1. Follow the steps below to get the data.
 2. Make sure you're in 09_commandline/sw-carpentry-shell-novice/shell-lesson-data to sync up with the lesson below.
 3. Go to [this link](https://swcarpentry.github.io/shell-novice/03-create/index.html#creating-directories) to follow along with the lesson that uses these datasets.


## Windows linux subsystem users
Open a terminal.

```
git clone https://github.com/Colorado-State-University-CMB/CM580A3-Intro-to-qCMB-2023.git
cd 09_commandline/sw-carpentry-shell-novice/shell-lesson-data
```


## Alpine users

```
cd /projects/$USER
git clone https://github.com/Colorado-State-University-CMB/CM580A3-Intro-to-qCMB-2023.git
cd 09_commandline/sw-carpentry-shell-novice/shell-lesson-data
```

## Mac users
 Update your local repository using "pull" in github desktop. Then navigate to "09_commandline/sw-carpentry-shell-novice in your terminal.
 

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

# Go to accompanying Software Carpentry Lessons

 - [moving-files-and-directories](https://swcarpentry.github.io/shell-novice/03-create/index.html#moving-files-and-directories) 
 - [Pipes and filters](https://swcarpentry.github.io/shell-novice/04-pipefilter/index.html)
 - [Loops](https://swcarpentry.github.io/shell-novice/05-loop/index.html)
 - [Scripting](https://swcarpentry.github.io/shell-novice/06-script/index.html)
 - [Finding things](https://swcarpentry.github.io/shell-novice/07-find/index.html)
