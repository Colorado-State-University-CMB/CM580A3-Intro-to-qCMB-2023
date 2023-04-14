# Alpine High Performance Computer

**Large-scale cluster computer (SUPERCOMPUTER).**

Alpine is the University of Colorado Boulder Research Computing’s third-generation high performance computing (HPC) cluster. Alpine is a heterogeneous compute cluster currently composed of hardware provided from University of Colorado Boulder, Colorado State University, and Anschutz Medical Campus. Alpine currently offers **317** compute nodes and a total of **18,080** cores.

 - Core: a CPU
 - Node: like your computer, but with 24 to 64 processors
 - RAM: 
   - Each CPU has (256GB or more on special jobs)
   - High memory jobs can request almost 1 Tb 
 - Can run multiple jobs in parallel
 - Free up your own computer 
 - Don't need to be logged in




[readthedocs on Alpine](https://curc.readthedocs.io/en/latest/clusters/alpine/index.html)

## Two ways to log on

 1. https://ondemand-rmacc.rc.colorado.edu/
    - operates through tabs in web browser
    - can remember password, duo authentication 
    - graphical file browser, with upload/download options
    - file editor and terminal windows
 2. ssh from your terminal
    - `ssh -l eid@colostate.edu rc.colorado.edu`
    - sometimes it works better
    - sometimes it's the only way to get on the system
    - command line only
    - need password,push DUO every time 

## Directory organization and space

 - home directory: /home/$USER - 5Gb
 - project directory: /projects/$USER - 250Gb
 - scratch directory: /scratch/alpine/$USER - 1Tb (**FILES DELETED AFTER 90 DAYS**) 

 - Config files go in home directory. 
 - Workflows, code, important data files go in project directory. 
 - Temporary data files go in scratch directory

IF YOU FILL UP YOUR HOME DIRECTORY, YOUR ACCOUNT MAY BECOME UNUSABLE


