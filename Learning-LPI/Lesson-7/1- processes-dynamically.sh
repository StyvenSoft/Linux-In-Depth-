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