#!/bin/bash
 
#SBATCH -J Taylorbar.job
#SBATCH -n 8
#SBATCH -p normal
#SBATCH -o Log/%J.out
#SBATCH -e Log/%J.err
 
 
mpirun -np 8 ./mpm3dpp_mpi Taylorbar.xmp  -refine_level 4 -file_inp  Taylorbar_fix_3d
