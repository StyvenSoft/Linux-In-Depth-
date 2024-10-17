#!/bin/bash
# Explorando procesos dinámicamente en Linux con ejemplos en Bash

# El comando 'top' permite explorar y monitorear procesos en tiempo real.

echo "=== Explorando Procesos en Tiempo Real con 'top' ==="
# Ejecutar 'top' y explicar teclas útiles:
# - M: Ordenar por uso de memoria.
# - N: Ordenar por PID.
# - T: Ordenar por tiempo de CPU consumido.
# - P: Ordenar por uso de CPU (predeterminado).
# - R: Reordenar los procesos.

# Ejecuta top y explora el uso de recursos de los procesos
top

echo "=== Teclas importantes en 'top' ==="
echo "M -> Ordena los procesos por uso de memoria."
echo "N -> Ordena por PID."
echo "T -> Ordena por tiempo de CPU consumido."
echo "P -> Ordena por uso de CPU (predeterminado)."
echo "R -> Reordena los procesos."

# Uso avanzado del comando 'top' con parámetros personalizados

# El comando 'top' en Linux permite monitorear los procesos del sistema en tiempo real.
# Algunos parámetros útiles para personalizar la visualización son:

# -d <segundos>: Establece el intervalo de actualización en segundos.
# Ejemplo: Actualizar cada 2 segundos
top -d 2
# El comando anterior hace que 'top' actualice la información de los procesos cada 2 segundos.

# -n <número>: Especifica cuántas veces se debe actualizar la pantalla antes de salir.
# Ejemplo: Actualizar 5 veces y salir
top -n 5
# El comando anterior mostrará la información de los procesos 5 veces y luego saldrá automáticamente.

# -u <usuario>: Muestra solo los procesos del usuario especificado.
# Ejemplo: Mostrar procesos del usuario 'root'
top -u root
# El comando anterior filtra los procesos para mostrar solo los pertenecientes al usuario 'root'.

# -p <PID>: Filtra para mostrar solo el proceso con el identificador de proceso especificado.
# Ejemplo: Mostrar información del proceso con PID 1234
top -p 1234
# Este comando muestra únicamente el proceso que tiene el PID 1234.

# -b: Ejecuta 'top' en modo por lotes (batch mode), útil para capturar la salida en un archivo de texto.
# Ejemplo: Capturar la salida de 'top' en un archivo de texto llamado 'output.txt'
top -b -n 1 > output.txt
# El comando anterior ejecuta 'top' en modo por lotes, actualiza la salida una vez (-n 1)
# y guarda la información en el archivo 'output.txt'.

# Un snapshot de los procesos: ps
echo "=== Snapshot de Procesos con 'ps' ==="
ps -f
# Muestra un snapshot detallado de los procesos con la siguiente información:
# UID, PID, PPID, C, STIME, TTY, TIME, CMD.

# Mostrar procesos con más detalles (usuario y formato completo)
ps -uf
# Incluye información detallada de los usuarios y procesos.

# Modo de vista extendida, con detalles adicionales
ps -v
# Muestra más información como el uso de memoria, CPU, tiempo de ejecución, etc.

# Exploración de procesos desde el directorio /proc
echo "=== Información de Procesos en /proc ==="
ls /proc
# /proc contiene un directorio para cada proceso activo, representado por su PID.

# Examinar un proceso específico, como el PID 1 (init/systemd)
ls /proc/1/
# Muestra el contenido del directorio /proc/1/ (información del proceso con PID 1)

cat /proc/1/cmdline
# Muestra la línea de comando con la que se ejecutó el proceso con PID 1

echo "=== Exploración del Directorio /proc ==="
# El directorio /proc es un sistema de archivos virtual que proporciona información sobre los procesos en ejecución.

echo "=== Explorando /proc/1/ ==="
# El directorio /proc/1/ corresponde al proceso con PID 1, usualmente el proceso init o systemd.

echo "=== Explorando /proc/1/cwd ==="
# /proc/1/cwd es un enlace simbólico al directorio de trabajo actual del proceso con PID 1.
ls -l /proc/1/cwd
# La opción '-l' muestra información detallada del enlace.

echo "=== Explorando /proc/1/root ==="
# /proc/1/root es un enlace simbólico al directorio raíz del proceso.
ls -l /proc/1/root
# Se necesita acceso de superusuario para explorar esta ruta.

echo "=== Explorando /proc/1/exe ==="
# /proc/1/exe es un enlace simbólico al ejecutable que se está ejecutando para el proceso con PID 1.
ls -l /proc/1/exe
# El uso de 'sudo' puede ser necesario para acceder a este enlace.

echo "=== Exploración con Permisos de Superusuario ==="
# Para acceder a ciertas rutas en /proc, se necesitan permisos de superusuario:
sudo ls -l /proc/1/root
# El uso de 'sudo' permite ver el contenido de enlaces protegidos.

# Carga del sistema: uptime
echo "=== Carga del Sistema con 'uptime' ==="
uptime
# 'uptime' muestra cuánto tiempo ha estado funcionando el sistema, la cantidad de usuarios y la carga promedio del sistema en 1, 5 y 15 minutos.

# Ejercicio práctico:
# 1. Ejecuta `top` y utiliza las teclas M, N, T, P, R para reordenar y observar diferentes aspectos de los procesos.
# 2. Usa `ps -f` para tomar un snapshot de los procesos actuales.
# 3. Repite con `ps -uf` para obtener más detalles del usuario.
# 4. Explora el directorio `/proc` con `ls /proc` y verifica el contenido de un proceso específico, como PID 1 (`ls /proc/1/`).
# 5. Examina la carga del sistema con `uptime` y analiza los valores de carga promedio.