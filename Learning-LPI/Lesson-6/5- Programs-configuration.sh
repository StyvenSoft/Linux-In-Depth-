#!/bin/bash
# Explicación sobre Programas y su Configuración en Linux
# Con ejemplos prácticos en Bash

# Dónde se almacenan los archivos binarios
# Los archivos ejecutables se almacenan en varios directorios. A continuación mostramos los más importantes:

echo "=== Archivos Binarios ==="
ls /usr/local/bin
# Los binarios locales específicos del usuario
ls /sbin
# Comandos administrativos del sistema
ls /bin
# Comandos esenciales del sistema
ls /usr/sbin
# Comandos administrativos del usuario
ls /usr/bin
# Comandos generales de usuario

# Archivos de Configuración
# Los archivos de configuración del sistema se almacenan en el directorio /etc

echo "=== Archivos de Configuración en /etc ==="
ls /etc
# Lista los archivos de configuración generales del sistema

# Archivos comunes de configuración dentro de /etc:
# group: define los grupos de usuarios
# hostname: define el nombre de la máquina en la red
# hosts: archivo para resolver nombres de dominio localmente
# passwd: información de usuarios
# profile: configuración general de perfil de usuarios
# shadow: almacenamiento de contraseñas encriptadas
# bash.bashrc: configuración global de Bash
# nanorc: configuración del editor nano
# resolv.conf: configuración de DNS
# sysctl.conf: parámetros del núcleo (kernel)

# Ver un ejemplo de archivo de configuración
echo "=== Ejemplo del archivo /etc/hostname ==="
cat /etc/hostname
# Muestra el nombre de la máquina

# Archivos de Configuración en HOME (Dotfiles)
# Los archivos de configuración del usuario se almacenan en el directorio home como archivos ocultos llamados Dotfiles

echo "=== Archivos de Configuración en HOME ==="
ls -a ~
# Lista los archivos ocultos de configuración en el directorio del usuario

# Archivos comunes en HOME:
# .bash_history: historial de comandos en Bash
# .bash_logout: comandos ejecutados al salir de Bash
# .bashrc: configuración personal de Bash
# .profile: configuración del perfil del usuario

# Ejercicio práctico:
# 1. Lista los binarios disponibles en /usr/bin utilizando `ls /usr/bin`.
# 2. Muestra el contenido del archivo de configuración de hosts con `cat /etc/hosts`.
# 3. Lista los Dotfiles en tu directorio de inicio con `ls -a ~`.
# 4. Muestra el historial de comandos usando `cat ~/.bash_history`.