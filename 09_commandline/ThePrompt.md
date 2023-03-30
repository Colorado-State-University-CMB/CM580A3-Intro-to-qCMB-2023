# Anatomy of the PROMPT
```
david@Cumbernauld /Users/david %
```


```
user  computer     working
       name        directory
----- ----------- ------------ -
david@Cumbernauld /Users/david %
                                 ---------
                                 ^^type here^^
                               
```

It is somewhat configurable, but the default setting is usually fine. 

Try some commands to see where the information comes from:

```
david@Cumbernauld /Users/david % whoami
david
david@Cumbernauld /Users/david % hostname
Cumbernauld.local
david@Cumbernauld /Users/david % pwd
/Users/david
```

This information is also stored in environmental variables. 

Use these commands to access them:

```
david@Cumbernauld /Users/david % echo $USER
david
david@Cumbernauld /Users/david % echo $HOST
Cumbernauld.local
david@Cumbernauld /Users/david % echo $PWD
/Users/david
```

Try some invalid commands.

```
david@Cumbernauld /Users/david % abcdefg
david@Cumbernauld /Users/david % ech $PWD
```

## Some keyboard shortcuts for the cursor. Or use the <delete> key to delete one character at a time. 

Use the left and right arrow keys to move the cursor

You cannot click in the middle of the line to edit!!! 

 - CTRL-A : move cursor to the beginning of the line
 - CTRL-E : move cursor to the end of the line
 - CTRL-W : delete a word at a time
 - CTRL-C : cancel current command

**Up/down-arrow** : scroll through command history

**Tab key** : autocomplete / show options

### Tab key behavior is different depending on what you have typed:
 - nothing: asks to display all commands
 - part of a command: 
   - autocompletes command if only one match
   - possible matches to that command
   - warning if no match
 - argument after command: displays files in current directory
 - partial argument after command:
   - autocompletes file name if unique match
   - possible matches to the file name
   - warning if no match

What it doesn't do:
  - did you mean...? `ehco` instead of `echo`
  - autocomplete/autosuggest non-file arguments

# Task: practice keyboard shortcuts on commands

Up-arrow to the commands above (echo, hostname, whoami, pwd) and execute them (hit enter). 

Up-arrow again and modify them using the keyboard shortcuts.
 - Pare down an echo command to "e" and hot tab to see what commands start with e
 - Do the same with other commands. What do you get?
