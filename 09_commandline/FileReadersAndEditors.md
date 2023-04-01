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



