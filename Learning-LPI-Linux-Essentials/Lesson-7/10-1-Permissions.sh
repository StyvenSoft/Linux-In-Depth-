#!/bin/bash
# Tema: Permisos especiales en Linux: SetUID, SetGID y Sticky Bit

# Introducción
# =============
# En Linux, existen permisos especiales que controlan cómo los usuarios y procesos interactúan con archivos y directorios:
# - **SetUID**: Permite que un archivo se ejecute con los privilegios de su propietario.
# - **SetGID**: Permite que un archivo o directorio se ejecute con los privilegios del grupo.
# - **Sticky Bit**: Restringe la eliminación de archivos en un directorio solo al propietario del archivo o al propietario del directorio.

# Configuración de permisos especiales usando modos simbólicos y numéricos.

# 1. SetUID
# =========
# El bit SetUID hace que un archivo ejecutable se ejecute con los privilegios de su propietario.

# Ejemplo: Crear un archivo con SetUID.
sudo touch setuid_example
sudo chmod u+s setuid_example  # Modo simbólico
sudo chmod 4755 setuid_example  # Modo numérico

# Verificar permisos
ls -l setuid_example  # Notarás una "s" en la columna de permisos del propietario.

# 2. SetGID
# =========
# El bit SetGID hace que los archivos creados dentro de un directorio hereden el grupo del directorio.

# Ejemplo: Crear un directorio con SetGID.
mkdir setgid_example
chmod g+s setgid_example  # Modo simbólico
chmod 2755 setgid_example  # Modo numérico

# Verificar permisos
ls -ld setgid_example  # Notarás una "s" en la columna de permisos del grupo.

# 3. Sticky Bit
# =============
# El Sticky Bit asegura que solo el propietario de un archivo o el propietario del directorio puedan eliminarlo.

# Ejemplo: Aplicar el Sticky Bit a un directorio.
mkdir sticky_example
chmod +t sticky_example  # Modo simbólico
chmod 1755 sticky_example  # Modo numérico

# Verificar permisos
ls -ld sticky_example  # Notarás una "t" al final de los permisos.

# Resumen de comandos
# ===================
# - SetUID: `chmod u+s` o `chmod 4755`.
# - SetGID: `chmod g+s` o `chmod 2755`.
# - Sticky Bit: `chmod +t` o `chmod 1755`.

# Ejercicios prácticos
# =====================
# 1. Crea un archivo `test_setuid` y aplica el permiso SetUID usando el modo simbólico.
sudo touch test_setuid
sudo chmod u+s test_setuid
ls -l test_setuid

# 2. Crea un directorio `test_setgid` y aplica el permiso SetGID usando el modo numérico.
mkdir test_setgid
chmod 2755 test_setgid
ls -ld test_setgid

# 3. Crea un directorio `test_sticky` y aplica el Sticky Bit usando el modo simbólico.
mkdir test_sticky
chmod +t test_sticky
ls -ld test_sticky