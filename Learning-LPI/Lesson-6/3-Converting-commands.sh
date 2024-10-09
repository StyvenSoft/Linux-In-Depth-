#!/bin/bash
# Códigos de salida y manejo de muchos argumentos

# Un código de salida indica si un script tuvo éxito o falló.
# 0 generalmente indica éxito, cualquier otro valor indica error.
# Ejemplo básico:
echo "Comenzando el script..."
# Si algo falla
if [ "$1" == "error" ]; then
    echo "Error encontrado, saliendo..."
    exit 1  # Código de salida 1 indica fallo.
fi
echo "Todo bien, terminando el script..."
exit 0  # Código de salida 0 indica éxito.

#---------------------------------------------------
# Manejando muchos argumentos

# Los argumentos $1, $2, $3, etc., son las entradas del usuario.
# Ejemplo de script para manejar múltiples nombres:

echo "Hello $1 $2 $3!"

# Uso del bucle 'for' para manejar todos los argumentos:
for username in "$@"
do
    echo "Hola $username!"
done

#---------------------------------------------------
# Ejercicio práctico: Ejecuta este script en la terminal
# ./script.sh Carol Dave Henry
# Resultado esperado: Hello Carol Dave Henry! (con bucle saludando a cada uno)

#---------------------------------------------------
# Expresiones regulares para comprobar errores en entradas

# Verificamos si una entrada es una palabra (solo letras):
echo "Animal" | grep "^[A-Za-z]*$" && echo "Es una palabra válida"
echo "4n1ml" | grep "^[A-Za-z]*$" || echo "Contiene caracteres inválidos"

# Otro ejemplo con variables:
entrada="Perro"
if [[ "$entrada" =~ ^[A-Za-z]+$ ]]; then
    echo "$entrada es una palabra válida"
else
    echo "$entrada no es una palabra válida"
fi

#---------------------------------------------------
# Ejercicio práctico: Cambia el valor de la variable y observa el comportamiento.