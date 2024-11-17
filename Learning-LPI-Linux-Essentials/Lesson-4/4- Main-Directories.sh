#!/bin/bash

# ============================================
#            Directorios Principales
# ============================================

# En Linux, existen varios directorios principales que forman parte del sistema de archivos.
# Cada uno tiene un propósito específico.

# Ejercicio práctico:
# Ver los directorios principales del sistema:
tree -L 1 /

# El comando `tree -L 1 /` muestra los directorios y archivos en el primer nivel de profundidad desde la raíz `/`.
# Esto nos da una visión general de las carpetas principales como `/bin`, `/etc`, `/home`, `/var`, etc.

# Directorio /home:
# ============================================
# El directorio `/home` contiene los directorios personales de cada usuario del sistema.

# Ejercicio práctico:
# Muestra las carpetas en el directorio `/home`:
tree -L 1 /home

# Si quieres ver la estructura completa del directorio de un usuario específico, puedes usar:
# (Sustituye `user` con tu nombre de usuario)

tree /home/user

# ============================================
#  Ruta relativa especial para `home` (~)
# ============================================
# El símbolo `~` es una ruta relativa especial que representa el directorio personal del usuario actual.
# Esto significa que, sin importar en qué lugar del sistema de archivos te encuentres, `~` siempre te llevará a tu directorio personal.

# Ejercicio práctico:
# Usa la ruta relativa especial `~` para navegar a tu directorio personal:
cd ~

# Verifica tu ubicación actual usando `pwd` para confirmar que estás en tu home:
pwd

# También puedes usar la ruta `~` para ver el contenido de tu directorio personal sin tener que estar en él:
ls ~

# Ruta de inicio (Prompt):
# Cuando ves el prompt del shell (la línea donde introduces comandos), puedes notar el símbolo `~` al principio.
# Esto indica que estás en tu directorio personal.

# Ejemplo:
user@hostname:~$

# ============================================
# Rutas relativas a los archivos de inicio (relative-to-home)
# ============================================
# Puedes hacer referencia a cualquier archivo o directorio dentro del directorio personal usando el símbolo `~`.

# Ejercicio práctico:
# Navega a tu directorio personal usando el comando `cd` con la ruta especial `~`:
cd ~

# Muestra el contenido de un directorio específico dentro de otro usuario. 
# Supongamos tengo mi usuario llamado `steveen`. Muestra el directorio personal con:
ls ~steveen

# Puedes acceder a un archivo dentro del directorio de otro usuario o dentro de tu propio home.
# Por ejemplo, si tienes un archivo llamado `report2018.txt` en la carpeta `Documents/Reports` de tu home, puedes verlo con:
less ~/Documents/Reports/report2024.txt

# Ejercicio práctico:
# Supón que tienes un archivo dentro de un directorio que está dentro de tu directorio personal, por ejemplo, `report2025.txt` en la carpeta `Documents`:
# Puedes usar la ruta relativa especial para abrir el archivo con:
less ~/Documents/report2025.txt

# Si quieres cambiar a un directorio dentro de otro usuario (por ejemplo, el usuario `user`), puedes usar una ruta relativa como esta:
cd ~user/Documents

# ============================================
# Otros ejemplos prácticos:
# ============================================

# 1. Mostrar el contenido de tu directorio home:
ls ~

# 2. Navegar directamente a una carpeta específica dentro de tu home:
cd ~/Downloads

# 3. Listar el contenido del directorio personal de otro usuario (si tienes permisos):
ls ~otheruser

# 4. Acceder a un archivo dentro de la home de otro usuario:
less ~otheruser/Documents/file.txt