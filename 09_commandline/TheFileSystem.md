# Navigating the file system

## Organization

### Hierarchical Structure

Computers/OSs favor a tree-like structure to keep
user files separated from system files.

 - user files
   - Can freely read/write/delete
   - Documents, Downloads, Desktop
   - Attached storage (thumb drive, external HD)
   - Network (including Cloud servers like OneDrive, Google Drive)
 - system/OS files
   - OS programs and data
   - can make changes as administrator 
 - user installed software
   - Chrome
   - Github Desktop
   - RStudio

### Hidden files
 - Keep out of view, but accessible when needed
 - Often need to be shown/hidden (ls -a shows "dot files")
 - Usually contain setup info, configuration data

### File extensions:.doc, .xlsx, .App,.exe
  - "show file extensions" in File Explorer (Windows) or Finder (Mac) 
  - Naming convention to indicate its format: what program generated the file
  - Directories usually don't have an extension (just a tendency) 
  - UNIX/linux program names usually don't have a file extension (double as command name) 

### Graphical file explorers
  - Organizes frequently used Folder/Files in a convenient display
  - May not reflect underlying file/directory structure
  - Other features (not just showing hidden files) adjustable in settings 
  - Trade-off between convenience and capability (also protect user) 


### Command line *is* a file explorer 

 Command-based navigation and exploration.

 - ls (list: view surroundings)
 - cd (change directory: navigation)
 - manipulate files/directories
   - mkdir (make directory)
   - rmdir (remove empty directory) 
   - mv (move or rename a file or directory) 
   - rm (permanently delete a file) 
