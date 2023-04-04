# Readers and Editors 

## Readers 

### less
 - up/down arrow keys: scroll line-by-line
 - b, space bar: page up, down
 - G: go to bottom
 - gg: go to top
 - q: quit

**Search for string:**
 - search forward: /pattern
 - search backward: ?pattern
 - go to next match: n
 - go to previous match: N

### more

Same as less, but it quits when you scroll to the end

### cat

`cat filename` prints an entire file to the screen

(I use this frequently because it keeps the command history on the screen)

## File Editors

Keyboard-only editors are almost completely mouse-independent

### nano

 - Easier to learn.
 - Keyboard shortcuts/combinations are on screen
 - terminology is different
   - write out = save
   - Exit, "save modified buffer" = *save changes?*

 - edit a new file (no filename): `% nano`
 - edit a named file: `% nano filename`
   - if file exists, edit that file 
   - if it doesn't, use that name as new file 


HOMEWORK 1:

Use nano to write yourself a cheatsheet. 
 - Start by writing the keyboard shortcuts that are displayed on screen
 - save and quit frequently
 - choose two commands to write summaries of. 
 - do so by typing, copy/pasting 
 - call the file: nano_cheatsheet.txt

### More advanced editor- vi/vim

For more advanced users, complete assignment by learning *vi*. 

Two modes, command mode, edit mode. 

#### vi command mode
 - select, undo/redo edits, show line numbers
 - search/replace, delete
 - enter edit mode:
   - i/a (input) 
   - R (replace) 
   - O (start editing on a new line above cursor) 
   - o (start editing on a new line below cursor) 
   - I/A (start editing at beginning of line, end of line) 
 - precise navigation  
   - ^ (goto line start) 
   - $ (goto line end) 
   - G/gg (same as less) 
   - w/b (go forward/backward one word) 
   - ctrl-f/b (page forward, back) 
   - :linenumber (go directly to line) 
 - save and quit
   - :w (save) 
   - :w filename (save as) 
   - :wq (save and quit) 
   - ZZ (save and quit) 

#### vi edit mode
 - type normally
 - esc key - leave edit mode




