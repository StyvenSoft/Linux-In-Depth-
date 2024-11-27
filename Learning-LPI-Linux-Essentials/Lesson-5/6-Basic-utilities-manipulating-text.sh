#!/bin/bash
# Tema: Utilidades básicas para manipular texto en Linux

# Introducción
# =============
# Estas herramientas son útiles para buscar, filtrar, visualizar y manipular texto en archivos.

# Utilidad `grep`
# ===============
# `grep` busca patrones en archivos o entradas de texto.

# Ejemplo: Buscar una palabra específica en un archivo
echo -e "Hola\nMundo\nLinux\ngrep" > sample.txt
grep "Linux" sample.txt  # Buscar "Linux" en sample.txt

# Ejercicio:
# Buscar todas las líneas que contienen la palabra "Hola" en un archivo llamado "texto.txt".
grep "Hola" texto.txt

# Utilidad `less`
# ===============
# `less` permite navegar por un archivo largo sin cargarlo completamente en la memoria.

# Ejemplo: Navegar por un archivo
less sample.txt  # Usa las teclas de flecha para moverte. Pulsa `q` para salir.

# Ejercicio:
# Abrir un archivo largo como "/var/log/syslog" con `less` y explora su contenido.
less /var/log/syslog

# Utilidades `cat`, `head` y `tail`
# =================================
# `cat`: Muestra el contenido completo de un archivo.
cat sample.txt

# `head`: Muestra las primeras líneas de un archivo.
head -n 2 sample.txt  # Muestra las primeras 2 líneas.

# `tail`: Muestra las últimas líneas de un archivo.
tail -n 2 sample.txt  # Muestra las últimas 2 líneas.

# Ejercicio:
# 1. Muestra las primeras 5 líneas de un archivo llamado "documento.txt".
head -n 5 documento.txt

# 2. Muestra las últimas 3 líneas de "documento.txt".
tail -n 3 documento.txt

# Utilidad `sort`
# ===============
# `sort` ordena líneas en un archivo o entrada.

# Ejemplo: Ordenar un archivo alfabéticamente.
echo -e "pera\nmanzana\nuva\nkiwi" > frutas.txt
sort frutas.txt

# Ejercicio:
# Ordena el archivo "notas.txt" numéricamente.
sort -n notas.txt

# Utilidad `cut`
# ==============
# `cut` extrae partes específicas de cada línea en un archivo.

# Ejemplo: Extraer la primera columna de un archivo separado por tabulaciones.
echo -e "ID\tNombre\tNota\n1\tAna\t90\n2\tJuan\t85" > alumnos.txt
cut -f 1 alumnos.txt  # Muestra la columna "ID".

# Ejercicio:
# Extrae la segunda columna de un archivo llamado "datos.csv" separado por comas.
cut -d ',' -f 2 datos.csv

# Utilidad `wc`
# =============
# `wc` cuenta líneas, palabras y caracteres en un archivo o entrada.

# Ejemplo: Contar líneas, palabras y caracteres en un archivo.
wc sample.txt

# Ejercicio:
# Muestra solo el número de líneas en "registro.log".
wc -l registro.log

# Resumen de comandos
# ===================
# - `grep`: Busca texto en un archivo.
# - `less`: Explora archivos largos.
# - `cat`: Muestra contenido completo.
# - `head`: Muestra primeras líneas.
# - `tail`: Muestra últimas líneas.
# - `sort`: Ordena líneas.
# - `cut`: Extrae partes de líneas.
# - `wc`: Cuenta líneas, palabras y caracteres.