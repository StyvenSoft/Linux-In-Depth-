#!/bin/bash

# ==========================================
#   Archivar ficheros desde la línea de comandos
# ==========================================

# En Linux, se pueden crear **archivos comprimidos** y **archivos de múltiples ficheros** (archivos tar) desde la línea de comandos.
# Las herramientas más comunes son **tar** para crear archivos y **gzip**, **bzip2**, **xz** para comprimir.

# ==========================================
#   Herramientas de compresión
# ==========================================

# Las herramientas de compresión permiten reducir el tamaño de un archivo o un conjunto de archivos.
# Comúnmente usamos `gzip`, `bzip2`, y `xz` para comprimir archivos.

# **Descomprimir archivos**:
# Ejercicio práctico:

# 1. Descomprimir un archivo .bz2 con `bunzip2`:
bunzip2 file.bz2

# 2. Descomprimir un archivo .gz con `gunzip`:
gunzip file.gz

# 3. Descomprimir un archivo .xz con `unxz`:
unxz file.xz

# **Compresión**:
# Para comprimir archivos individualmente con las herramientas anteriores, puedes usar `gzip`, `bzip2`, y `xz`.
# Ejemplo:
gzip file        # Comprime el archivo file a file.gz
bzip2 file       # Comprime el archivo file a file.bz2
xz file          # Comprime el archivo file a file.xz

# ==========================================
#   Archivadores: el comando tar
# ==========================================

# El comando `tar` se utiliza para **archivar** múltiples archivos en un solo fichero.
# Los archivos `.tar` suelen combinarse con herramientas de compresión.

# Ejercicio práctico:

# 1. Crear un archivo tar que contenga todos los archivos de un directorio:
tar -cvf archive.tar /ruta/directorio

# 2. Para listar el contenido de un archivo tar sin extraerlo:
tar -tf archive.tar

# 3. Para extraer los archivos de un archivo tar:
tar -xvf archive.tar

# **Combinando archivado con compresión**:
# Puedes combinar `tar` con herramientas de compresión como `gzip`, `bzip2` o `xz`.

# Ejemplo práctico:
# 1. Crear un archivo comprimido con gzip:
tar -czvf archive.tar.gz /ruta/directorio

# 2. Extraer un archivo tar.gz:
tar -xzvf archive.tar.gz

# ==========================================
#   Gestión de archivos ZIP
# ==========================================

# El formato ZIP es muy común y también se puede manejar desde la línea de comandos en Linux.

# Ejercicio práctico:

# 1. Para crear un archivo ZIP con el contenido de un directorio, usa `zip -r`:
zip -r archive.zip /ruta/directorio

# 2. Para extraer un archivo ZIP, usa `unzip`:
unzip archive.zip

# ==========================================
#       Ejercicios adicionales y prácticos
# ==========================================

# 1. Comprimir un archivo llamado `document.txt` en formato gzip:
gzip document.txt

# 2. Crear un archivo tar que contenga varios archivos (por ejemplo, todos los archivos .txt en tu directorio actual):
tar -cvf text_files.tar *.txt

# 3. Crear un archivo tar.gz que contenga todo el contenido de tu directorio `projects`:
tar -czvf projects_backup.tar.gz /home/user/projects

# 4. Extraer un archivo tar.bz2 llamado `backup.tar.bz2`:
tar -xjvf backup.tar.bz2

# 5. Crear un archivo zip de un directorio llamado `images`:
zip -r images.zip /ruta/images

# 6. Extraer un archivo zip llamado `data.zip`:
unzip data.zip