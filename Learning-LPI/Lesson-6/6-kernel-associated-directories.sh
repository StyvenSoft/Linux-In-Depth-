#!/bin/bash
# Explicación sobre el Kernel de Linux y los directorios asociados
# Con ejemplos prácticos en Bash

# systemd es el sistema de inicio y administrador de servicios predeterminado en muchas distribuciones de Linux.

# Dónde se almacenan los núcleos del sistema
echo "=== Núcleos del sistema en /boot ==="
ls /boot
# Los núcleos de Linux y sus archivos relacionados se almacenan en /boot
# - System.map: tabla que mapea direcciones simbólicas a funciones del kernel
# - grub: gestor de arranque

# Explorar el archivo de mapa del sistema (System.map)
echo "=== Ejemplo de archivo System.map ==="
cat /boot/System.map-$(uname -r)

# El directorio /proc: Información del sistema y kernel
# Este directorio contiene información del kernel y del sistema en tiempo real.
echo "=== Información del sistema en /proc ==="
cat /proc/cpuinfo
# Muestra información sobre la CPU

cat /proc/cmdline
# Muestra los parámetros de arranque del kernel

cat /proc/modules
# Lista los módulos del kernel cargados

# El directorio /proc/sys: Configuración del sistema
echo "=== Configuración del sistema en /proc/sys ==="
ls /proc/sys
# Lista los archivos de configuración de kernel y sistema

cat /proc/sys/kernel/pid_max
# Muestra el número máximo de procesos permitidos en el sistema

# Dispositivos de hardware: El directorio /dev
# El directorio /dev contiene archivos que representan los dispositivos de hardware
echo "=== Dispositivos en /dev ==="
ls -l /dev/sd*
# Lista los dispositivos de almacenamiento (discos duros y particiones)

ls -l /dev/tty*
# Lista los dispositivos de terminales (TTY)

# /dev/zero: proporciona un flujo de bytes cero
# /dev/null: descarta toda la entrada (black hole)
# /dev/urandom: proporciona números aleatorios

# El directorio /sys: Información del hardware
echo "=== Información del hardware en /sys ==="
cat /sys/class/net/enp0s3/address
# Muestra la dirección MAC de la interfaz de red enp0s3

# Memoria y tipos de memoria
# Utiliza el comando `free` para ver el uso de memoria del sistema
echo "=== Información de Memoria ==="
free -h
# Muestra la memoria total, usada, compartida, buffers, caché y disponible en formato legible (human-readable)

# Ejercicio práctico:
# 1. Verifica los módulos cargados con `cat /proc/modules`.
# 2. Lista los archivos de configuración del kernel con `ls /proc/sys/kernel`.
# 3. Muestra la dirección MAC de tu interfaz de red con `cat /sys/class/net/[interfaz]/address`.
# 4. Muestra el estado de la memoria usando `free -h` para ver los valores en formato legible.
# 5. Lista los dispositivos de disco con `ls -l /dev/sd*`.