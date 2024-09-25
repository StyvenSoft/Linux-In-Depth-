#!/bin/bash

echo "########################################"
echo "#           Comillas en Linux          #"
echo "########################################"

# Comillas Dobles (Double Quotes):
# Las comillas dobles permiten la expansión de variables y la interpretación de caracteres especiales.
# Ejemplo:
echo "La fecha de hoy es: $(date)"

# Ejemplo: Se puede incluir una variable y caracteres especiales.
nombre="Steveen"
echo "Hola, mi nombre es $nombre y hoy es $(date +%A)."

# Comillas Simples (Single Quotes):
# Las comillas simples impiden la expansión de variables y tratan todo el contenido como texto literal.
# Ejemplo:
echo 'La fecha de hoy es: $(date)'

# Ejemplo: Todo el contenido se toma literalmente, incluso variables.
echo 'Hola, mi nombre es $nombre y hoy es $(date +%A).'

# Caracteres de Escape (Escape Characters):
# Los caracteres de escape permiten incluir caracteres especiales en una cadena.
# Ejemplo:
echo "Él dijo: \"Hola Mundo\""

# Ejemplo: Usando un carácter de escape para una nueva línea.
echo -e "Primera línea.\nSegunda línea."