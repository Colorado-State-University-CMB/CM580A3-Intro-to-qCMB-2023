# Intro to command line
Who, what, where, when, when, why and how. 

 - **What?**
Text interface to computer. As opposed to a GUI. 
 - **Why?**
Basic. Versatile. Designed for automation. 
 - **How?**
I'll show you. 
 - **When?**
Right now. (It existed before GUIs). 
 - **Who?**
You: the biologist, analyzer of data, the user of open source. 
 - **Where?**
   - On Mac: search (cmd-space) for Terminal, or go to Applications/Utilities
   - On Windows: open your linux subsystem app.
   - Both: make a shortcut, leave in Dock. Make it easy on yourself to find again.


## What

 - GUI:
   - mouse
   - screen draws windows
   - menus, pull down boxes, etc.
   - **visual program output is graphical**
 - Command line:
   - keyboard 
   - screen displays text (but scrollable) 
   - commands are typed out, submitted with enter key 
   - **visual program output is text**
   - **can easily chain programs together**

## The "shell" 

The *shell* wraps around the *kernel*. Shell means interface, kernel means operating system. 

**Basic usage level**:
 - runs programs 
 - navigate/manipulate files
 - provide utilities for user (system info, internet, searching) 
 - configuration, preferences (includes variables, files)

**Next level usage**:
  - install software (open source haven) 
  - create pipelines (natural progression of the shell pipes/streams/redirection) 
  - automate tasks (shell commands/pipelines in scripts) 

### Syntax
  - case-sensitive
  - spaces (or lack thereof) important
  - more abbreviations, symbols than R (limit typing)
  
** Compared to R: **
  - commands work on files, not data structures stored in variables
  - functions: no parentheses, spaces separate arguments
    - R: `head(dataframe)`
    - BASH: `head filename`
    - R: `dataframe %>% head()`
    - BASH: `head < filename` or `cat filename | head`
 

### Differences between shells. 

Syntax details. Built-in features. [See accepted answer](https://apple.stackexchange.com/questions/361870/what-are-the-practical-differences-between-bash-and-zsh)

Easy way to tell: Zsh prompt ends with `%`, bash prompt ends with `$`.

---

# Anatomy of the prompt

[Markdown for Anatomy of prompt](ThePrompt.md)



