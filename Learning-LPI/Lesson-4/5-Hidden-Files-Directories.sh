#!/bin/bash

# ============================================
#         Archivos y Directorios Ocultos
# ============================================

# En Linux, los archivos y directorios ocultos son aquellos cuyo nombre comienza con un punto (.). 
# Estos suelen ser archivos de configuración.

# Ejercicio práctico:
# Para ver archivos y directorios ocultos en tu directorio home, usa el comando:
ls -a ~

# El flag `-a` muestra todos los archivos, incluidos los ocultos.
# En el resultado, verás archivos como `.bashrc`, `.profile`, y muchos más.

# ============================================
#     La Opción de Listado Largo (long list)
# ============================================
# La opción `-l` del comando `ls` proporciona una vista de listado largo que muestra más información sobre los archivos, 
# como los permisos, propietario, tamaño, y fecha de modificación.

# Ejercicio práctico:
# Para ver un listado largo de los archivos en tu directorio personal:
ls -l ~

: '
-rw-r--r-- 1 hugo_echeverri hugo_echeverri  649 oct  1 08:23 contents-sorted.txt
-rw-r--r-- 1 hugo_echeverri hugo_echeverri  649 oct  1 08:17 contents.txt
drwxr-xr-x 2 hugo_echeverri hugo_echeverri 4096 ago 30 11:18 Descargas
drwxr-xr-x 2 hugo_echeverri hugo_echeverri 4096 oct  1 18:22 Documentos
'

# Descripción de cada columna:
# 1. Permisos (rwx).
# 2. Número de enlaces.
# 3. Propietario del archivo.
# 4. Grupo.
# 5. Tamaño del archivo.
# 6. Fecha y hora de la última modificación.
# 7. Nombre del archivo.

# ============================================
#       Opciones Adicionales del Comando ls
# ============================================

# ls -lh: Lista los archivos en formato legible para humanos, mostrando los tamaños en KB, MB, GB, etc.
# Ejercicio práctico:
ls -lh ~

# ls -d */: Muestra solo los directorios en el directorio actual.
# Ejercicio práctico:
ls -d ~/*/

# ls -lt: Lista los archivos en orden descendente según la fecha de modificación más reciente.
# Ejercicio práctico:
ls -lt ~

# ls -lrt: Lista los archivos en orden ascendente según la fecha de modificación (más antiguos primero).
# Ejercicio práctico:
ls -lrt ~

# ls -lX: Lista los archivos agrupados por tipo, como carpetas, archivos ejecutables, etc.
# Ejercicio práctico:
ls -lX ~

# ls -S: Lista los archivos según su tamaño, de mayor a menor.
# Ejercicio práctico:
ls -S ~

# ============================================
#              Recursión en Bash
# ============================================
# El comando `ls` también puede usarse de manera recursiva para mostrar el contenido de directorios y sus subdirectorios.
# Esto se logra utilizando el flag `-R`.

# Ejercicio práctico:
# Muestra el contenido de tu directorio personal y de todos sus subdirectorios:
ls -R ~

# Esto listará todos los archivos y directorios dentro de cada carpeta de tu directorio personal.

# ============================================
# Ejercicios adicionales:
# ============================================

# 1. Ver todos los archivos ocultos y detalles adicionales en tu directorio home:
ls -la ~

# 2. Ver solo los directorios en tu directorio personal:
ls -d ~/*/

# 3. Ver los archivos en tu home ordenados por tamaño, en formato legible:
ls -lhS ~

# 4. Ver los archivos en orden de modificación ascendente:
ls -lrt ~

# 5. Listar los archivos de un directorio con sus permisos y agrupados por tipo:
ls -lX /usr/local/bin