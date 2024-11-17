#!/bin/bash
# Tema: Modificación de permisos y propiedades de archivos en Linux

# Modificando permisos de archivo con `chmod`
# ===========================================
# `chmod` permite cambiar permisos de archivos y directorios utilizando modos simbólicos o numéricos.
# Ejemplo: Conceder permisos de lectura y escritura a usuario y grupo, pero quitar la ejecución y remover todos los permisos para otros.
chmod ug+rw-x,o-rwx text.txt
# Verificar cambios de permisos
ls -l text.txt

# Ejemplo: Usar `chmod` en modo numérico para otorgar permisos de lectura y escritura a usuario y grupo, y sin permisos para otros.
chmod 660 text.txt
ls -l text.txt

# Modo simbólico de `chmod`
# =========================
# `chmod` en modo simbólico permite especificar permisos para usuario (u), grupo (g), otros (o), o todos (a).

# Ejemplo: Conceder permisos de escritura al grupo.
chmod g+w text.txt
ls -l text.txt

# Ejemplo: Quitar permisos de lectura para el usuario propietario.
chmod u-r text.txt
ls -l text.txt

# Ejemplo: Otorgar permisos de lectura y escritura para todos y quitar permisos de ejecución.
chmod a=rw- text.txt
ls -l text.txt

# Ejemplo: Otorgar permisos de lectura, escritura y ejecución al usuario, y quitar permisos de ejecución al grupo.
chmod u+rwx,g-x text.txt
ls -l text.txt

# Ejemplo: Aplicar permisos recursivamente a un directorio.
chmod -R u+rwx Another_Directory/
ls -ld Another_Directory/

# Modo numérico de `chmod`
# ========================
# Los permisos pueden definirse en modo numérico utilizando combinaciones de números para usuario, grupo y otros:
# - `4`: Lectura (r)
# - `2`: Escritura (w)
# - `1`: Ejecución (x)

# Ejemplo: Asignar permisos 660 (lectura y escritura para usuario y grupo, sin permisos para otros).
chmod 660 text.txt
ls -l text.txt

# Modificando la propiedad del archivo con `chown`
# ================================================
# `chown` permite cambiar el propietario y el grupo de un archivo o directorio.

# Ejemplo: Cambiar propietario a "carol" y grupo a "students".
sudo chown carol:students text.txt
ls -l text.txt

# Consultando grupos en el sistema
# ================================
# `groups`: Muestra los grupos a los que pertenece el usuario actual o uno específico.

# Ejemplo: Consultar los grupos del usuario actual.
groups

# Ejemplo: Consultar los grupos a los que pertenece el usuario "carol".
groups carol

# `groupmems`: Permite gestionar los miembros de un grupo (requiere permisos de administrador).

# Ejemplo: Listar los miembros del grupo `cdrom`.
sudo groupmems -g cdrom -l

# Ejercicios prácticos
# ====================
# 1. Crear un archivo llamado `NewFile.txt` y asignar permisos de lectura y escritura para todos.
touch NewFile.txt
chmod 666 NewFile.txt
ls -l NewFile.txt

# 2. Cambiar permisos del archivo `NewFile.txt` para que solo el propietario tenga permisos de lectura y escritura.
chmod 600 NewFile.txt
ls -l NewFile.txt

# 3. Crear un directorio `TestDir2` y dar permisos de lectura, escritura y ejecución solo al propietario.
mkdir TestDir2
chmod 700 TestDir2
ls -ld TestDir2

# 4. Cambiar propietario y grupo del archivo `NewFile.txt` a "carol" y "students".
sudo chown carol:students NewFile.txt
ls -l NewFile.txt