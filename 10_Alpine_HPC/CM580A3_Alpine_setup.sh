#!/usr/bin/env bash
# Fri Apr 14 14:03:46 MDT 2023

source /curc/sw/anaconda3/latest

# set special locations (for @colostate.edu users) for installation destinations
conda config --prepend envs_dirs /projects/.colostate.edu/${USER/@colostate.edu/}/software/anaconda/envs
# Warning: '/projects/.colostate.edu/dcking/software/anaconda/envs' already in 'envs_dirs' list, moving to the top
conda config --prepend pkgs_dirs /projects/.colostate.edu/${USER/@colostate.edu/}/.conda_pkgs
#Warning: '/projects/.colostate.edu/dcking/.conda_pkgs' already in 'pkgs_dirs' list, moving to the top
conda config --add channels bioconda
#Warning: 'bioconda' already in 'channels' list, moving to the top


# create special rc for the class's slurm users
SPECIAL_RC=~/.CM580A3.rc

echo 'source /curc/sw/anaconda3/latest' > $SPECIAL_RC
echo "alias sa='sacct -X --format JobID,JobName,AllocCPUS,State,ExitCode,Elapsed,TimeLimit,Submit,Start,End'" >> $SPECIAL_RC
echo "alias sq='squeue -u $USER'" >> $SPECIAL_RC

echo '# >>>>>>> CM580A3_Alpine_setup.sh' >> ~/.bashrc
echo "source $SPECIAL_RC" >> ~/.bashrc
echo '# <<<<<<< CM580A3_Alpine_setup.sh' >> ~/.bashrc



