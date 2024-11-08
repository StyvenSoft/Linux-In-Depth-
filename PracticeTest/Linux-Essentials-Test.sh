#!/bin/bash

# Inicialización de arrays para preguntas, opciones y respuestas correctas
declare -a questions=(
    "¿Cuál de los siguientes es el directorio principal en el sistema de archivos de Linux?"
    "¿Qué comando se usa para cambiar de directorio en la línea de comandos de Linux?"
    "¿Cuál es la función del símbolo '|' en una línea de comandos de Linux?"
    "¿Qué comando se utiliza para ver todos los procesos en ejecución?"
    "¿Qué permiso de archivo permite que un usuario ejecute un archivo como programa en Linux?"
)

# Opciones para las preguntas
declare -a options=(
    "a) /usr\nb) /root\nc) /home\nd) /"
    "a) pwd\nb) ls\nc) cd\nd) mv"
    "a) Permitir redirigir la salida de un comando a otro comando.\nb) Finalizar un comando.\nc) Cambiar de usuario.\nd) Borrar un archivo." # Opciones para la pregunta 3
    "a) ls\nb) ps\nc) kill\nd) chmod"
    "a) Lectura (r)\nb) Escritura (w)\nc) Ejecución (x)\nd) Ninguno de los anteriores"
)

declare -a correct_answers=("d" "c" "a" "b" "c") # Respuestas correctas para cada pregunta

# Variables de contadores
correct_count=0
incorrect_count=0

# Inicio del test
echo "Bienvenido al test de Linux Essentials. Selecciona la respuesta correcta para cada pregunta."

# Iterar sobre cada pregunta y capturar la respuesta del usuario
for i in "${!questions[@]}"; do
    echo -e "\nPregunta $((i + 1)): ${questions[i]}"
    echo -e "${options[i]}"
    echo -n "Tu respuesta : "
    read -r answer

    # Validar la respuesta
    if [[ "$answer" == "${correct_answers[i]}" ]]; then
        echo "Correcto!"
        ((correct_count++))
    else
        echo "Incorrecto!"
        ((incorrect_count++))
    fi
done

# Mostrar resultados finales
echo -e "\nTest completado."
echo "Respuestas correctas: $correct_count"
echo "Respuestas incorrectas: $incorrect_count"