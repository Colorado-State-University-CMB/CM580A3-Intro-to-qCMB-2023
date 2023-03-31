# Anatomy of the command line 

## Anatomy of the PROMPT
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

**<TAB> key** : autocomplete / show options

### <TAB> key behavior is different depending on what you have already typed:
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

### Task: practice keyboard shortcuts on commands

Up-arrow to the commands above (echo, hostname, whoami, pwd) and 
modify them using the keyboard shortcuts.
 1. Pare down an echo command to "ech" and hit tab. It should expand to "echo" 
 2. try <TAB> completion with "ec", "e" and see what comes up. 
 3. Do the same with other commands. What do you get?
 4. Try <TAB> with a blank command line. You'll probably have to hit it twice. What is a command with an interesting name?
 5. Try that command by adding " -h" to the end. For example, if I see `gcc`, then I will type `gcc -h` with a space between the last 'c' and the '-'.

## Anatomy of commands


### Syntax
       
( Only showing the prompt separator '%' )
  
```
              1         2
% command argument1 argument2                                
```

SPACES DIVIDE ARGUMENTS
       
```
         1      2        3
 % com mand argument1 argument2  
```

```
       1      2    3      4
 % command argum ent1 argument2  
```

- arguments can't include spaces "unless you wrap in quotes"
- command will NEVER include spaces (unless developer is sadistic)
       
      
