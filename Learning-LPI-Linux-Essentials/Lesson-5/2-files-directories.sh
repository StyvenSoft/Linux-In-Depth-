#!/bin/bash

# ==========================================
#        Eliminando archivos y directorios
# ==========================================

# Para eliminar **archivos** y **directorios**, usamos los comandos `rm` y `rmdir`.
# `rmdir` solo se puede usar para eliminar **directorios vacíos**.

# Ejercicio práctico:
# Si tienes un archivo llamado `file5`, puedes eliminarlo con:
rm file5

# Si tienes un directorio vacío llamado `deleting`, puedes eliminarlo con:
rmdir deleting

# Si necesitas eliminar un directorio **con su contenido**, usa la opción `-r` (recursivo):
rm -r deleting

# Para eliminar con confirmación antes de cada archivo o directorio, usa la opción `-i`:
rm -ri moving

# **Precaución:** Usar `rm -r` es peligroso, especialmente si se ejecuta en directorios incorrectos,
# ya que borrará todos los archivos y subdirectorios.

# ==========================================
#      Copiando archivos y directorios
# ==========================================

# El comando `cp` permite copiar archivos y directorios.
# Para copiar un archivo individual, simplemente especifica la fuente y el destino.

# Ejercicio práctico:
# Si quieres copiar un archivo `/etc/nsswitch.conf` a un directorio llamado `files`, ejecuta:
cp /etc/nsswitch.conf files/nsswitch.conf

# Para copiar múltiples archivos, se pueden listar los archivos que deseas copiar seguidos por el directorio de destino:
cp /etc/issue /etc/hostname files

# Para copiar directorios completos junto con su contenido, debes usar la opción `-r`:
cp -r files directories

# Si quieres copiar un directorio y su contenido en otro directorio, puedes hacerlo así:
cp -r files files2

# ==========================================
#            Globbing en Bash
# ==========================================

# Globbing es una técnica para usar **caracteres especiales** como comodines para coincidir con múltiples archivos a la vez.
# Los caracteres más comunes son `*`, `?` y `[]`.

# Ejercicio práctico:
# Para listar todos los archivos que comienzan con "star", puedes usar:
ls star*

# El comodín `*` coincide con **cualquier número de caracteres**.
# El símbolo `?` coincide con **un solo carácter**:
ls file?

# Las **expresiones entre corchetes** permiten coincidir con caracteres específicos. Por ejemplo, para encontrar archivos con números, puedes usar:
ls file[[:digit:]]

# **Clases de caracteres** útiles incluyen:
# - `[:alnum:]`: caracteres alfanuméricos (letras y números)
# - `[:alpha:]`: solo letras
# - `[:blank:]`: espacios y tabulaciones
# - `[:digit:]`: solo dígitos

# Ejemplo de uso práctico:
# Para listar archivos con letras y números en el nombre, usa:
ls file[[:alnum:]]

# Si quieres encontrar archivos que contengan cualquier letra, ejecuta:
ls file[[:alpha:]]

# Para encontrar archivos que tengan un espacio en su nombre, usa:
ls file[[:blank:]]

# ==========================================
#       Ejercicios adicionales y prácticos:
# ==========================================

# 1. Crea un directorio llamado `backup` y copia todos los archivos de tu directorio actual en él:
mkdir backup
cp * backup

# 2. Elimina un archivo o directorio con confirmación antes de cada archivo:
rm -ri backup

# 3. Usa globbing para listar todos los archivos `.conf` en tu sistema:
ls *.conf

# 4. Copia varios archivos de `/etc` a un nuevo directorio `config_files`:
mkdir config_files
cp /etc/nsswitch.conf /etc/issue /etc/hostname config_files

# 5. Usa globbing para listar archivos que contengan letras y números en su nombre:
ls file[[:alnum:]]*