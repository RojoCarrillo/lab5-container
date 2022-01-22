#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno22/lab5-container/data
#SBATCH -J JuanjoRojo_lab5
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=END #END/START/NONE
#SBATCH --mail-user=juanjose.rojoc@um.es
#SBATCH --output=RESULTADOS.txt

# Affinity
#export KMP_AFFINITY=granularity=fine,compact

# Number of threads
#export OMP_NUM_THREADS=32
#16,32

# Tiempo de ejecución para python
time python ./k-mer13.py
time python ./k-mer14.py

# Tiempo de ejecución  C++
time c++ ./k-mer13
time c++ ./k-mer14

