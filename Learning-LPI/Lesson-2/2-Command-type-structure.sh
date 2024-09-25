#!/bin/bash

echo "########################################"
echo "#  Estructura de la Línea de Comandos  #"
echo "########################################"

# La línea de comandos en Linux se organiza en tres componentes principales:
# 1. Comando: Es la instrucción o programa que deseas ejecutar. Ejemplo: `ls`
# 2. Opciones (Flags): Modificadores que cambian el comportamiento del comando. Ejemplo: `-l`
# 3. Argumentos: Son los objetos o datos sobre los cuales el comando opera. Ejemplo: `/home`

# Un ejemplo sería el siguiente comando:
# $ ls -l /home
# En este caso:
# - `ls` es el comando.
# - `-l` es la opción que indica que queremos ver el listado en formato largo.
# - `/home` es el argumento, que es el directorio que queremos listar.

echo "ls -l /home"

# El siguiente comando muestra el contenido de un archivo de texto:
# $ cat -n /etc/passwd
# En este caso:
# - `cat` es el comando.
# - `-n` es la opción que muestra las líneas numeradas.
# - `/etc/passwd` es el argumento que indica el archivo que queremos ver.

echo "cat -n /etc/passwd"

# Ejemplo de la estructura de la línea de comandos usando el directorio /etc:
# El siguiente comando lista todos los archivos y directorios en /etc:
# $ ls -l /etc
# En este caso:
# - `ls` es el comando.
# - `-l` es la opción que indica que queremos ver el listado en formato largo.
# - `/etc` es el argumento que indica el directorio que queremos listar.

echo "ls -l /etc"

# =====================================
# Tipos de Comportamiento de los Comandos:
# =====================================

# Comandos Internos:

# Son los comandos integrados directamente en el shell. Se ejecutan sin necesidad de llamar a un programa externo.
# Ejemplos de comandos internos:
# cd, pwd, echo

# Ejemplo de un comando interno:
echo "cd /home"
echo "pwd"

# Otro ejemplo de un comando interno:
# Este comando imprime un texto en la terminal:
# $ echo "Hola Mundo"
# `echo` es un comando interno del shell que simplemente imprime texto o variables.

echo "echo 'Hola Mundo'"

# Ejemplo de un comando interno:
# Este comando cambia el directorio actual a /etc:
# $ cd /etc
# `cd` es un comando interno del shell que cambia el directorio actual.

echo "cd /etc"


# Comandos Externos:

# Son programas externos que están almacenados en el sistema de archivos. Cuando se ejecuta un comando externo, el sistema busca el programa en los directorios definidos por la variable PATH.
# Ejemplos de comandos externos:
# ls, cat, grep

# Ejemplo de un comando externo:
echo "ls /home"

# Ejemplo de un comando externo:
# Este comando muestra el contenido de un archivo de configuración:
# $ cat /etc/hosts
# `cat` es un comando externo que muestra el contenido del archivo especificado.

echo "cat /etc/hosts"

# Otro ejemplo de un comando externo:
# Este comando muestra los procesos en ejecución en el sistema:
# $ ps aux
# `ps` es un comando externo que muestra una lista de los procesos en ejecución.

echo "ps aux"
