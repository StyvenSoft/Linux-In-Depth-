#!/bin/bash

# ============================================
#      Rutas Absolutas y Relativas
# ============================================

# Rutas Absolutas:
# ============================================
# Una ruta absoluta es la dirección completa de un archivo o directorio, comenzando desde el directorio raíz `/`.
# Siempre comienza con una barra `/`, que indica que la ruta empieza desde el directorio raíz del sistema.

# Ejemplo de ruta absoluta:
/home/usuario/documentos/archivo.txt

# Ejercicio práctico:
# Muestra la ruta absoluta de tu ubicación actual:
pwd

# Cambia a una ruta absoluta específica (por ejemplo, el directorio `/etc`):
cd /etc

# Muestra el contenido de este directorio:
ls

# Rutas Relativas:
# ============================================
# Las rutas relativas dependen de tu ubicación actual en el sistema de archivos.
# No comienzan desde el directorio raíz, sino desde el directorio donde te encuentras actualmente.
# Se pueden usar para navegar entre subdirectorios o regresar al directorio anterior.

# Ejemplo de ruta relativa:
# Si estás en `/home/usuario` y quieres acceder a `/home/usuario/documentos`, puedes usar la ruta relativa:
documentos/archivo.txt

# Ejercicio práctico:
# Cambia a tu directorio personal utilizando una ruta relativa:
cd ~

# Supongamos que dentro de tu directorio personal tienes una carpeta llamada `proyectos`.
# Navega a `proyectos` usando una ruta relativa:
cd proyectos

# Muestra el contenido del directorio usando `ls`:
ls

# ============================================
# Rutas Relativas Especiales:
# ============================================
# Hay dos rutas relativas especiales muy comunes:
# - `.` (punto): Representa el directorio actual.
# - `..` (doble punto): Representa el directorio padre, es decir, un nivel superior al directorio actual.

# Ejemplo de uso de `.`:
# Ejecutar un script dentro del directorio actual usando `.` (punto):
./mi_script.sh

# Ejercicio práctico:
# Si tienes un script en tu directorio actual llamado `ejemplo.sh`, lo puedes ejecutar con:
./ejemplo.sh

# Ejemplo de uso de `..`:
# Para subir un nivel en el sistema de archivos, usa `..`.
# Si estás en `/home/usuario/proyectos`, para ir a `/home/usuario`, puedes usar:
cd ..

# Ejercicio práctico:
# Cambia al directorio padre (un nivel arriba):
cd ..

# Usa `pwd` para comprobar que ahora estás un nivel arriba:
pwd

# ============================================
# Más ejemplos prácticos:
# ============================================

# 1. Cambiar a un subdirectorio usando una ruta relativa:
# Supón que tienes un subdirectorio `documentos` en tu directorio actual. Puedes cambiar a él con:
cd documentos

# 2. Cambiar a una ruta absoluta desde cualquier lugar:
# Independientemente de dónde estés, puedes cambiar al directorio `/var/log` con:
cd /var/log

# 3. Volver al directorio personal desde cualquier lugar usando la tilde `~`:
# No importa dónde estés, puedes volver a tu directorio personal con:
cd ~

# 4. Ver el contenido de un archivo usando una ruta relativa:
# Si estás en `/home/usuario` y tienes un archivo `archivo.txt` en `documentos`, puedes ver su contenido con:
cat documentos/archivo.txt