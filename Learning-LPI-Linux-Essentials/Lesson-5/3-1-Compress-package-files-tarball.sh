#!/bin/bash
# Tema: Comprimir y empaquetar archivos con tarball

# Introducción
# =============
# El comando `tar` se utiliza en Linux para empaquetar (crear archivos tarball) y descomprimir archivos. 
# Este comando es ideal para agrupar varios archivos en un único archivo comprimido.
# Los tarballs suelen tener extensiones como `.tar`, `.tar.gz` o `.tar.bz2`.

# Opciones comunes de `tar`:
# - c : Crear un archivo tar.
# - x : Extraer archivos de un tarball.
# - f : Especifica el archivo tarball.
# - t : Listar el contenido de un tarball.
# - v : Modo detallado (muestra los archivos procesados).
# - p : Conserva permisos de archivos al extraerlos.
# - z : Comprimir/descomprimir usando `gzip`.
# - j : Comprimir/descomprimir usando `bzip2`.

# Ejercicios prácticos
# =====================

# 1. Crear un archivo tarball sin compresión
mkdir tarball_example
touch tarball_example/file1.txt tarball_example/file2.txt
tar -cvf archive.tar tarball_example

# Explicación:
# - `c`: Crea el archivo.
# - `v`: Modo detallado.
# - `f`: Especifica el nombre del archivo tarball.

# 2. Crear un archivo tarball comprimido con gzip
tar -czvf archive.tar.gz tarball_example

# Explicación:
# - `z`: Comprime con gzip.
# - El archivo generado tiene extensión `.tar.gz`.

# 3. Crear un archivo tarball comprimido con bzip2
tar -cjvf archive.tar.bz2 tarball_example

# Explicación:
# - `j`: Comprime con bzip2.
# - El archivo generado tiene extensión `.tar.bz2`.

# 4. Listar el contenido de un archivo tarball
tar -tvf archive.tar

# Explicación:
# - `t`: Lista el contenido del archivo.
# - `v`: Muestra detalles de los archivos.

# 5. Extraer un archivo tarball sin compresión
tar -xvf archive.tar

# Explicación:
# - `x`: Extrae el contenido del archivo.
# - `v`: Modo detallado.

# 6. Extraer un archivo tarball comprimido con gzip
tar -xzvf archive.tar.gz

# Explicación:
# - `z`: Descomprime usando gzip.
# - `x`: Extrae el contenido del archivo.

# 7. Extraer un archivo tarball comprimido con bzip2
tar -xjvf archive.tar.bz2

# Explicación:
# - `j`: Descomprime usando bzip2.
# - `x`: Extrae el contenido del archivo.

# Resumen de comandos básicos
# ============================
# 1. Crear un tarball: `tar -cvf archive.tar directory/`
# 2. Crear un tarball comprimido con gzip: `tar -czvf archive.tar.gz directory/`
# 3. Crear un tarball comprimido con bzip2: `tar -cjvf archive.tar.bz2 directory/`
# 4. Listar el contenido: `tar -tvf archive.tar`
# 5. Extraer sin compresión: `tar -xvf archive.tar`
# 6. Extraer con gzip: `tar -xzvf archive.tar.gz`
# 7. Extraer con bzip2: `tar -xjvf archive.tar.bz2`