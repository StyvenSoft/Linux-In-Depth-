#!/bin/bash

# ====================================================
#         Sensibilidad a las mayúsculas y minúsculas
# ====================================================

# En Linux, el sistema de archivos es **sensible a las mayúsculas y minúsculas**.
# Esto significa que los directorios o archivos como `ETC` y `etc` se tratan como dos entidades diferentes.

# Ejercicio práctico:
# Intenta cambiar de directorio con diferentes combinaciones de mayúsculas y minúsculas.
# Si tienes un directorio llamado `etc`, ejecuta:
cd ETC

# Si no existe, obtendrás un error, ya que el directorio correcto es:
cd etc

# Este comportamiento aplica para nombres de archivos y directorios en todo el sistema de archivos.

# ====================================================
#            Creación de directorios
# ====================================================

# Puedes crear directorios con el comando `mkdir`. 
# Si quieres crear un directorio simple, ejecuta:
mkdir linux_essentials-2.4

# Si necesitas crear varios directorios o subdirectorios a la vez, usa la opción `-p`.
# Ejercicio práctico:
mkdir -p creating/moving/copying/files copying/directories deleting/directories

# Este comando crea una estructura de directorios con varios niveles de subdirectorios.

# ====================================================
#              Creación de archivos
# ====================================================

# Para crear un archivo vacío, puedes usar el comando `touch`.
# Ejercicio práctico:
touch globs/question1

# Puedes crear archivos con contenido usando `echo` o `cat`.
# Ejercicio práctico:
echo "Hello, World!" > question15

# Para mostrar el contenido de un archivo, usa `cat`:
cat question15

# También puedes escribir contenido en un archivo existente o crear uno nuevo con `cat`:
cat > question14
# Escribe algo, luego presiona `CTRL+D` para guardar.

# ====================================================
#          Cambiando el nombre de los archivos
# ====================================================

# El comando `mv` te permite mover o cambiar el nombre de archivos.
# Si simplemente quieres cambiar el nombre de un archivo, usa:
mv file22 file2

# Puedes usar la opción `-i` para recibir una advertencia antes de sobrescribir un archivo existente.
# Ejercicio práctico:
mv -i file4 file3

# Si `file3` ya existe, se te pedirá confirmación antes de sobrescribirlo.

# ====================================================
#       Ejercicios adicionales y prácticos:
# ====================================================

# 1. Crea un directorio llamado `bash_practice`:
mkdir bash_practice

# 2. Crea un archivo dentro de ese directorio llamado `script.sh`:
touch bash_practice/script.sh

# 3. Cambia el nombre del archivo a `practice.sh`:
mv bash_practice/script.sh bash_practice/practice.sh

# 4. Crea un archivo nuevo con contenido y visualízalo con `cat`:
echo "Este es un archivo de prueba" > test_file
cat test_file

# 5. Intenta crear un archivo o directorio con un nombre en mayúsculas y luego intenta acceder a él con una variación en minúsculas.
# ¿Qué sucede?
