#!/bin/bash
# Explicación de Memoria, Procesadores, Almacenamiento y Controladores en Linux
# Con ejemplos prácticos utilizando Bash

# Memoria
# El comando free muestra el uso de la memoria del sistema
# La opción -m muestra los valores en megabytes

echo "=== Memoria ==="
free -m
# Muestra la memoria total, utilizada, libre y disponible en megabytes

# Procesadores
# El comando lscpu muestra información sobre la arquitectura de la CPU y procesadores del sistema

echo "=== Procesadores ==="
lscpu
# Muestra el número de CPUs, hilos, arquitectura y detalles del procesador

# Almacenamiento
# El comando lsblk muestra la estructura del almacenamiento, discos y particiones

echo "=== Almacenamiento ==="
lsblk
# Muestra el nombre de los dispositivos, su tamaño y el punto de montaje si está disponible

# Controladores y archivos de dispositivo
# Podemos listar los archivos de dispositivos de un controlador en particular, como mmcblk* para tarjetas de memoria

echo "=== Controladores y archivos de dispositivo ==="
ls -l /dev/mmcblk*
# Lista los archivos de dispositivo relacionados con tarjetas de memoria (MMC)