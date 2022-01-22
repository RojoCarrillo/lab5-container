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


#cargamos la imagen y ejecutamos lo necesario

echo "Version del sistema operativo"

singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif cat /etc/os-release

echo "					"

echo "Contenido del directorio que estamos viendo" 
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ls

echo "					"
echo "El path del directorio que estamos viendo"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif pwd

echo "					"
echo "La version de python que hay instalada"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif python --version

echo "					"
echo "La version del compilador de C++ que tenemos instalada"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif g++ --version


echo "					"
echo "Ejecutando k-mers13 en C++"

time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif /home/alumno22/lab5-container/data/k-mer13


#descargamos el modulo

module unload singularity/3.8.0







