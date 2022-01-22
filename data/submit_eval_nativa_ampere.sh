#!/bin/bash

#SBATCH -p hpc-bio-ampere
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

echo "Ejecucion de los programas de Python"
echo "                                    "
echo "Programa k-mers13"
time ./k-mer13.py
echo "                                    "
echo "Programa k-mers14"
time ./k-mer14.py

# Tiempo de ejecución  C++

echo "Ejecucion de los programas de C++"
echo "                                    "
echo "Programa k-mers13"
time ./k-mer13

echo "                                    "
<<<<<<< HEAD
echo "Programa k-mers13"
=======
echo "Programa k-mers14"
>>>>>>> 8528a19a7b09c17ab1f79d9d0d4a0b667aaebc25
time ./k-mer14

