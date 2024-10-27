#!/bin/bash
# Tema: Consultar información sobre archivos y directorios en Linux

# Consultar información sobre archivos y directorios
# ==================================================
# El comando `ls` se utiliza para listar el contenido de un directorio.
# Ejemplo: Listar archivos y directorios en el directorio actual
ls

# `ls -l`: Muestra detalles adicionales como permisos, número de enlaces, propietario, grupo, tamaño y fecha de modificación.
# Ejemplo: Lista los detalles de los archivos y directorios
ls -l

# `ls -lh`: Muestra los detalles en formato legible para humanos (con tamaños en KB, MB, GB).
# Ejemplo: Listar detalles en formato legible para humanos
ls -lh

# Ejemplo: Mostrar detalles específicos de archivos y directorios
ls -lh StevenFile.zip test.sh

# `ls -l -a`: Lista todos los archivos, incluidos los ocultos (que comienzan con un punto).
# Ejemplo: Mostrar todos los archivos, incluidos los ocultos
ls -l -a

# Comprendiendo los tipos de archivos
# ===================================
# En la salida de `ls -l`, la primera columna muestra el tipo de archivo:
# - `-`: Archivo normal
# - `d`: Directorio
# - `l`: Enlace simbólico (suave)
# - `b`: Dispositivo de bloque (almacenamiento)
# - `c`: Dispositivo de caracteres (periféricos como terminales)
# - `s`: Socket (para la comunicación entre procesos)

# Comprendiendo los permisos
# ==========================
# Los permisos en Linux están representados por tres conjuntos de caracteres para usuario, grupo y otros:
# - `r`: Permiso de lectura
# - `w`: Permiso de escritura
# - `x`: Permiso de ejecución

# Ejemplo de permisos para un archivo
# -rw-r--r-- 1 hugo hugo 4.0K Dec 20 18:46 MyFile.txt
# - El primer carácter es `-` (archivo normal).
# - `rw-`: El propietario tiene permisos de lectura y escritura.
# - `r--`: El grupo tiene permisos de lectura.
# - `r--`: Los demás usuarios tienen permisos de lectura.

# Permisos en archivos y directorios
# ==================================
# En archivos:
# - `r` (lectura): Permite ver el contenido del archivo.
# - `w` (escritura): Permite modificar el contenido del archivo.
# - `x` (ejecución): Permite ejecutar el archivo como un programa.

# En directorios:
# - `r` (lectura): Permite listar los archivos dentro del directorio.
# - `w` (escritura): Permite crear o eliminar archivos en el directorio.
# - `x` (ejecución): Permite acceder a los archivos en el directorio (navegación).

# Ejemplo práctico de permisos en un directorio
# =============================================
# `ls -ld Another_Directory/` muestra detalles de un directorio:
# d--xr-xr-x 2 hugo hugo 4,0K Dec 20 18:46 Another_Directory
# - `d`: Es un directorio.
# - `--x`: El propietario solo puede acceder (entrar) al directorio.
# - `r-x`: El grupo puede leer el contenido del directorio y acceder.
# - `r-x`: Los demás usuarios también pueden leer y acceder al directorio.

# Ejercicios prácticos
# ====================
# 1. Crear un archivo llamado `TestFile.txt` y mostrar sus permisos.
touch TestFile.txt
ls -l TestFile.txt

# 2. Cambiar los permisos del archivo para que solo el propietario pueda leer y escribir.
chmod 600 TestFile.txt
ls -l TestFile.txt

# 3. Crear un directorio llamado `TestDir` y listar sus detalles.
mkdir TestDir
ls -ld TestDir

# 4. Cambiar los permisos del directorio para permitir a todos el acceso (rwx).
chmod 777 TestDir
ls -ld TestDir