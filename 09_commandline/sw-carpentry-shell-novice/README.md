# Setup

 1. Follow the steps below to get the data.
 2. Make sure you're in 09_commandline/sw-carpentry-shell-novice/shell-lesson-data to sync up with the lesson below.
 3. Go to [this link](https://datacarpentry.org/shell-genomics/03-working-with-files/index.html) to follow along with the lesson that uses these datasets.


## Windows linux subsystem users
Open a terminal.

```
git clone https://github.com/Colorado-State-University-CMB/CM580A3-Intro-to-qCMB-2023.git
cd 09_commandline/sw-carpentry-shell-novice/shell-data
```


## Alpine users

```
cd /projects/$USER
git clone https://github.com/Colorado-State-University-CMB/CM580A3-Intro-to-qCMB-2023.git
cd 09_commandline/sw-carpentry-shell-novice/shell-data
```

## Mac users
 1. Update your local repository using "pull" in github desktop. 
 2. Then navigate to "09_commandline/sw-carpentry-shell-novice/shell-data in your terminal.
 

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

# Data carpentry Shell genomics

Data directory: `09_commandline/sw-carpentry-shell-novice/shell-data`

 - [Working with files](https://datacarpentry.org/shell-genomics/03-working-with-files/index.html)
 - [Redirection](https://datacarpentry.org/shell-genomics/04-redirection/index.html)
 - [Scripting](https://datacarpentry.org/shell-genomics/05-writing-scripts/index.html)

# For more practice, go to accompanying Software Carpentry Lessons

Data directory: `09_commandline/sw-carpentry-shell-novice/shell-lesson-data`

 - [Creating directories](https://swcarpentry.github.io/shell-novice/03-create/index.html#creating-directories) 
 - [Pipes and filters](https://swcarpentry.github.io/shell-novice/04-pipefilter/index.html)
 - [Loops](https://swcarpentry.github.io/shell-novice/05-loop/index.html)
 - [Scripting](https://swcarpentry.github.io/shell-novice/06-script/index.html)
 - [Finding things](https://swcarpentry.github.io/shell-novice/07-find/index.html)
