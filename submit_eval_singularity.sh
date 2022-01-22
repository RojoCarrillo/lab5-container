#!/bin/bash

#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno22/lab5-container
#SBATCH -J JuanjoRojo_lab5
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=END #END/START/NONE
#SBATCH --mail-user=juanjose.rojoc@um.es
#SBATCH --output=output_manejando_container.sh

# Affinity
#export KMP_AFFINITY=granularity=fine,compact

# Number of threads
#export OMP_NUM_THREADS=32
#16,32


#cargar el modulo de singularity 

module load singularity/3.8.0

echo "Ejecucion a traves de singularity"

echo "Ejecucion de los programas de Python"
echo "                                    "
echo "Programa k-mers13"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif /home/alumno22/lab5-container/data/k-mer13.py
echo "                                    "
echo "Programa k-mers14"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif /home/alumno22/lab5-container/data/k-mer14.py

# Tiempo de ejecución  C++

echo "Ejecucion de los programas de C++"
echo "                                    "
echo "Programa k-mers13"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif /home/alumno22/lab5-container/data/k-mer13

echo "                                    "

echo "Programa k-mers14"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif /home/alumno22/lab5-container/data/k-mer14


#descargamos el modulo
module unload singularity/3.8.0
