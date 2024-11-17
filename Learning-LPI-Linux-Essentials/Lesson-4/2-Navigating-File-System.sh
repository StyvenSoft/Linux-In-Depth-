#!/bin/bash

# ============================================
#      Navegando en el Sistema de Archivos
# ============================================

# Obteniendo la ubicación actual:
# ============================================
# Para saber en qué directorio te encuentras actualmente, puedes usar el comando `pwd` (Print Working Directory).
# Este comando te muestra la ruta completa del directorio en el que estás trabajando.

# Comando para obtener la ubicación actual:
pwd

# Ejemplo práctico:
# Si ejecutas el comando `pwd` en tu terminal, podrías obtener una salida como esta:
# /home/usuario

# ============================================
# Listando el contenido de los directorios:
# ============================================
# Para ver el contenido de un directorio, el comando que se utiliza es `ls`.
# Existen varias opciones para este comando, como `ls -l` para ver detalles, o `ls -a` para mostrar archivos ocultos.

# Comando básico para listar el contenido de un directorio:
ls

# Ejemplo práctico:
# Si ejecutas `ls` en tu directorio de trabajo, podrías ver una lista de archivos y carpetas:
# archivo1.txt  carpeta1  archivo2.sh  .archivo_oculto

# Opciones comunes de `ls`:
# Muestra detalles de los archivos (permisos, tamaño, fecha).
ls -l

# Muestra también los archivos ocultos (los que empiezan con un punto).
ls -a

# Muestra los detalles con tamaños legibles (como KB, MB).
ls -lh

# ============================================
# Cambiando al directorio actual:
# ============================================
# Para cambiar de directorio, se usa el comando `cd` (Change Directory).
# Puedes cambiar a cualquier directorio indicando la ruta relativa o absoluta.

# Comando para cambiar al directorio `home`:
cd /home

# Ejemplo práctico:
# Si quieres ir a tu directorio personal, puedes usar:
cd /home/usuario

# Cambiar al directorio anterior:
# Puedes volver al directorio anterior con el siguiente comando:
cd -

# Cambiar al directorio principal:
# Para volver al directorio raíz, solo usa:
cd /

# Cambiar al directorio padre (un nivel arriba):
# Usa el siguiente comando para moverte al directorio que contiene al actual:
cd ..

# Ejercicio práctico:
# Cambia a tu directorio personal, lista su contenido y vuelve al directorio anterior.