#!/bin/bash
# Tema: Permisos en archivos temporales y enlaces en Linux

# Permisos en los directorios temporales
# ======================================
# Los directorios `/tmp` y `/var/tmp` se usan para archivos temporales. Generalmente tienen permisos especiales.
# - `chmod 1777`: Permisos de escritura para todos y el sticky bit (+t), que asegura que solo el propietario o root pueda eliminar los archivos de un usuario.

# Verificar permisos en directorios temporales
ls -ldh /tmp/ /var/tmp/

# Ejemplo: Crear un directorio temporal y asignarle permisos con el sticky bit (chmod 1755)
mkdir temp
chmod 1755 temp
ls -ld temp

# Ejemplo: Usar `chmod +t` para activar el sticky bit en el directorio "temp".
chmod +t temp
ls -ld temp

# Comprendiendo los enlaces
# =========================
# Existen dos tipos de enlaces en Linux:
# - **Enlaces duros**: Apuntan directamente al contenido del archivo en el disco.
# - **Enlaces simbólicos**: Apuntan al nombre del archivo, no al contenido.

# Trabajando con enlaces duros (Hard Links)
# =========================================
# `ln`: Crea enlaces duros que comparten el mismo contenido del archivo original.
# Sintaxis: `ln TARGET LINK_NAME`

# Ejemplo: Crear un enlace duro "hardlink" que apunte al archivo "target.txt".
touch target.txt  # Crear archivo base
ln target.txt /home/carol/Documents/hardlink

# Verificar el enlace duro creado
ls -l target.txt /home/carol/Documents/hardlink

# Los enlaces duros comparten el mismo `inode`, lo que significa que ambos archivos tienen el mismo contenido.
# Cambios en uno de los archivos se reflejan en el otro, mientras que eliminarlos no afecta al otro archivo.

# Administrando los enlaces duros
# ===============================
# Mover y eliminar enlaces duros se gestiona de la misma manera que los archivos normales.

# Ejemplo: Mover el enlace duro a otra ubicación.
mv /home/carol/Documents/hardlink /home/carol/hardlink_moved
ls -l target.txt /home/carol/hardlink_moved

# Ejemplo: Eliminar el enlace duro. 
rm /home/carol/hardlink_moved
# El archivo "target.txt" permanece intacto después de eliminar el enlace duro.

# Ejercicios prácticos
# ====================
# 1. Crear un archivo `Sample.txt` y asignarle permisos solo para el propietario.
touch Sample.txt
chmod 600 Sample.txt

# 2. Crear un enlace duro a `Sample.txt` en un nuevo directorio llamado `TestLinks`.
mkdir TestLinks
ln Sample.txt TestLinks/Sample_link

# 3. Mover el enlace `Sample_link` al directorio `/tmp` y verificar que el archivo original no se modifica.
mv TestLinks/Sample_link /tmp/Sample_link
ls -l Sample.txt /tmp/Sample_link

# 4. Eliminar el enlace de `/tmp` y verificar que `Sample.txt` aún existe.
rm /tmp/Sample_link
ls -l Sample.txt

# 5. Eliminar el directorio temporal creado para el ejercicio y archivos
rm -rf TestLinks temp