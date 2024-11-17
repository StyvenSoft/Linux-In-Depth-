#!/bin/bash

# ==========================================
#   Buscar y extraer datos de los ficheros
# ==========================================

# En Linux, podemos buscar y extraer datos de ficheros usando herramientas como `grep`, `find`, y combinando estas con redirecciones y tuberías para trabajar con grandes volúmenes de datos de manera eficiente.

# ==========================================
#   Redirección de salida estándar
# ==========================================

# La redirección permite enviar la salida estándar de un comando a un archivo en lugar de a la pantalla. 
# Existen dos tipos principales de redirección: `>` para sobrescribir el archivo y `>>` para añadir a un archivo existente.

# Ejercicio práctico:

# 1. Crear un archivo nuevo llamado `text` y escribir "Hello World!" en él:
echo "Hello World!" > text

# 2. Añadir más texto a `text` sin sobrescribir el contenido existente:
echo "Hello to you too!" >> text

# ==========================================
#   Redirección de error estándar
# ==========================================

# En Linux, también puedes redirigir los mensajes de error de un comando a un archivo. 
# Para redirigir los errores, usa `2>`. Para agregar a un archivo, usa `2>>`.

# Ejercicio práctico:

# 1. Buscar el directorio `/usr/games` y redirigir los errores a un archivo `text-error`:
find /usr games 2> text-error

# 2. Intentar ordenar un archivo protegido y redirigir errores:
sort /etc/shadow 2>> text-error2

# 3. Ignorar los errores redirigiéndolos a `/dev/null`:
sort /etc 2> /dev/null

# ==========================================
#   Redirección de entrada estándar
# ==========================================

# La redirección de entrada estándar toma la entrada de un archivo en lugar del teclado.

# Ejercicio práctico:

# 1. Mostrar el contenido de un archivo usando `cat` y la redirección de entrada estándar:
cat < text

# 2. Eliminar la letra "l" del archivo `text` usando `tr`:
tr -d "l" < text

# ==========================================
#   Here documents
# ==========================================

# Los here documents permiten enviar varias líneas de texto a un comando directamente desde un script o la terminal.

# Ejercicio práctico:

# 1. Usar `cat` para crear un archivo con múltiples líneas de texto:
cat << EOF
Hello, this is a multiline text.
It will be saved in a file.
EOF

# Esto imprime el texto en la salida estándar. Puedes redirigirlo a un archivo si lo deseas:
cat << EOF > output.txt
This is the first line.
This is the second line.
EOF

# ==========================================
#   Combinaciones de redirecciones y tuberías
# ==========================================

# Puedes combinar varias redirecciones. Por ejemplo, usar `&>` redirige tanto la salida estándar como los errores.

# Ejercicio práctico:

# 1. Usar `find` para buscar en `/usr` y redirigir tanto la salida como los errores al archivo `newfile`:
find /usr admin &> newfile

# 2. Usar `cut` para extraer la tercera columna de las rutas en `newfile` (separador "/"):
cut -f 3 -d "/" newfile

# ==========================================
#   Tuberías (Pipes)
# ==========================================

# Las **tuberías** permiten enviar la salida de un comando como entrada de otro comando usando el símbolo `|`.

# Ejercicio práctico:

# 1. Mostrar el contenido de `/etc/passwd` paginándolo con `less` usando una tubería:
cat /etc/passwd | less

# 2. Listar archivos, limitar el resultado a las primeras líneas con `head` y contar el número de palabras con `wc`:
ls -l | head | wc -w

# Las tuberías son muy útiles para crear **flujos de trabajo** en los que un comando procesa la salida de otro.

# ==========================================
#       Ejercicios adicionales
# ==========================================

# 1. Redirigir los errores del comando `ls` al archivo `errors.log`:
ls /nonexistent 2> errors.log

# 2. Redirigir tanto la salida estándar como los errores al archivo `output.log`:
find /etc/calendar &> output.log

# 3. Usar tuberías para buscar usuarios en `/etc/passwd` cuyo nombre comience con "root":
grep "^root" /etc/passwd | cut -d ":" -f 1

# 4. Crear un archivo con múltiples líneas usando Here Documents y guardarlo en `multilines.txt`:
cat << EOF > multilines.txt
This is a multiline document.
We are creating it using a here document.
EOF