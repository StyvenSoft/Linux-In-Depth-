#!/bin/bash

echo "##############################################"
echo "#            Archivos y Directorios          #"
echo "##############################################"

# El sistema de archivos Linux:
# El sistema de archivos Linux organiza los datos de forma jerárquica en directorios, 
# similar a otros sistemas operativos como Windows o macOS.
# Los directorios (carpetas) pueden contener archivos o subdirectorios, creando una estructura en forma de árbol.
# Ejemplo: Mostrar la estructura de archivos con el comando 'tree'

echo "Ejemplo: Mostrar la estructura de archivos con 'tree' (si no está instalado, puedes instalarlo con 'sudo apt install tree')"
tree

# Instalación de tree
# en una distribución basada en Debian (como Ubuntu o Debian mismo)

sudo apt update
sudo apt install tree

# Ejemplo de salida de tree
# estructura de directorios:

# ejecutar tree en el directorio /home/usuario/
: '
.
├── documentos
│   ├── informe.txt
│   ├── presupuesto.xlsx
│   └── presentación.pptx
├── descargas
│   ├── imagen.png
│   └── video.mp4
└── música
    ├── canción1.mp3
    └── álbum
        └── canción2.mp3

4 directories, 6 files
'
#  mostrar solo dos niveles de profundidad
tree -L 2

# mostrar archivos ocultos (que comienzan con .), usa la opción -a:
tree -a

# Para generar la salida en un archivo, Se puede redirigir la salida del comando:
tree > estructura.txt

# Nombres de archivos y directorios:
# En Linux, los nombres de archivos y directorios distinguen entre mayúsculas y minúsculas.
# Es decir, 'Archivo.txt' y 'archivo.txt' son dos archivos diferentes.

# Buena práctica:
# Es recomendable evitar el uso de espacios y caracteres especiales en los nombres de archivos y directorios,
# ya que pueden causar problemas al ejecutar comandos en la terminal.
# En su lugar, usa guiones bajos (_) o guiones (-) para separar palabras en nombres.

# Ejemplos de nombres adecuados de archivos:
# En lugar de usar nombres como "mi archivo.txt", es preferible usar "mi_archivo.txt" o "mi-archivo.txt".
echo "Ejemplo de nombres adecuados de archivos:"
echo "mi_archivo.txt"
echo "mi-archivo.txt"

# Crear un archivo con un nombre adecuado:
touch mi_archivo.txt
echo "Archivo 'mi_archivo.txt' creado correctamente."

# Crear un directorio con un nombre adecuado:
mkdir mi-directorio
echo "Directorio 'mi-directorio' creado correctamente."

# Uso del comando 'tree' para visualizar la estructura de archivos y directorios
# Si el comando 'tree' no está instalado en tu sistema, puedes instalarlo con 'sudo apt install tree'.
# 'tree' muestra gráficamente la estructura de directorios y archivos de forma jerárquica.
echo "Ejemplo: Estructura de archivos y directorios en el directorio actual:"
tree

# Al nombrar archivos y directorios, evita el uso de caracteres especiales como !, @, #, $, %, ^, &, *, etc.
# En su lugar, usa nombres descriptivos y claros, utilizando solo letras, números, guiones bajos y guiones.
# Por ejemplo: 
#   correcto: "mi-proyecto_v1"
#   incorrecto: "mi proyecto@v1!"

# Ejemplo de renombrar un archivo incorrectamente nombrado:
# Si tienes un archivo llamado "mi archivo@v1!.txt", es mejor renombrarlo usando 'mv':
mv "mi archivo@v1!.txt" "mi_archivo_v1.txt"
echo "Archivo renombrado correctamente a 'mi_archivo_v1.txt'"