#!/bin/bash

# Importar el archivo de preguntas y respuestas
# source ./Questions.sh
source ./PracticalExam.sh

# Variables de contadores
correct_count=0
incorrect_count=0

# Inicio del test
echo "Bienvenido al test de Linux Essentials. Selecciona la respuesta correcta para cada pregunta."

# Iterar sobre cada pregunta y capturar la respuesta del usuario
for i in "${!questions[@]}"; do
    echo -e "\nPregunta $((i + 1)): ${questions[i]}"
    echo -e "${options[i]}"
    read -p "Tu respuesta: " answer

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
echo -e "\n*** Test completado ***\n"
echo "Respuestas correctas: $correct_count"
echo "Respuestas incorrectas: $incorrect_count"

# Calcular y mostrar el porcentaje de respuestas correctas
total_questions=${#questions[@]}
percentage=$(( (correct_count * 100) / total_questions ))
echo "Has obtenido un $percentage% de respuestas correctas."