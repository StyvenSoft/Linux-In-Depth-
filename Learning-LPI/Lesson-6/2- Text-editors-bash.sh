#!/bin/bash

# ==========================================
#         Editores de texto comunes (vi y nano)
# ==========================================

# En sistemas Linux, dos editores de texto populares son `vi` y `nano`.

# **vi**:
# - Es un editor avanzado, potente y disponible en casi todas las distribuciones.
# - Modo comando y modo edición. Para entrar en el modo de edición, presiona `i`.
# - Para guardar y salir: `Esc` para salir de edición, luego `:wq` para guardar y salir.

# **nano**:
# - Es un editor más simple y fácil de usar.
# - Barra de menú al fondo para guiarte (Ctrl + O para guardar, Ctrl + X para salir).

# Ejercicio práctico:

# 1. Abre y edita un archivo con `nano`:
nano myfile.txt

# 2. Abre y edita un archivo con `vi`:
vi myfile.txt

# ==========================================
#         Variables en Bash
# ==========================================

# Las variables en Bash son útiles para almacenar datos como texto, números, etc. 
# No es necesario declarar el tipo de variable explícitamente.

# Ejercicio práctico:

# 1. Crear una variable con un nombre y mostrarla:
username=Carol
echo "Hello $username!"

# ==========================================
#         Uso de comillas con variables
# ==========================================

# Las comillas dobles permiten almacenar texto con espacios en una variable.

# Ejercicio práctico:

# 1. Crear una variable con un nombre completo y mostrarla:
username="Carol Smith"
echo "Hello $username!"

# ==========================================
#         Argumentos en Bash
# ==========================================

# Los scripts de Bash pueden aceptar argumentos desde la línea de comandos.

# Ejercicio práctico:

# 1. Crear un script que reciba un nombre como argumento:
# Guardar esto en `greet_user.sh`:

#!/bin/bash
username=$1
echo "Hello $username!"

# Luego ejecutarlo en la terminal:
# $ bash greet_user.sh Carol
# Output: Hello Carol!

# 2. Usar múltiples argumentos:
#!/bin/bash
username1=$1
username2=$2
echo "Hello $username1 and $username2!"

# ==========================================
#         Devolver el número de argumentos
# ==========================================

# Para conocer cuántos argumentos se pasaron al script, usamos `$#`.

# Ejercicio práctico:

# 1. Crear un script que muestre el número de argumentos:
#!/bin/bash
username=$1
echo "Hello $username!"
echo "Number of arguments: $#."

# Ejecutar:
# $ bash greet_user.sh Carol Michael
# Output:
# Hello Carol!
# Number of arguments: 2.

# ==========================================
#         Lógica condicional (if y fi)
# ==========================================

# La estructura condicional `if` permite ejecutar comandos según ciertas condiciones.

# Ejercicio práctico:

# 1. Crear un script que salude solo si recibe exactamente un argumento:
#!/bin/bash
if [ $# -eq 1 ]; then
  username=$1
  echo "Hello $username!"
else
  echo "Please enter only one argument."
fi
echo "Number of arguments: $#."

# ==========================================
#         Operadores relacionales
# ==========================================

# Los operadores relacionales se usan en scripts para comparar números.

# - `-ne`: no igual a.
# - `-gt`: mayor que.
# - `-ge`: mayor que o igual a.
# - `-lt`: menor que.
# - `-le`: menor que o igual a.

# Ejercicio práctico:

# 1. Comparar dos números y mostrar el resultado:
#!/bin/bash
num1=5
num2=10

if [ $num1 -ne $num2 ]; then
  echo "$num1 no es igual a $num2"
fi

if [ $num1 -lt $num2 ]; then
  echo "$num1 es menor que $num2"
fi

if [ $num2 -ge 10 ]; then
  echo "$num2 es mayor o igual a 10"
fi

# ==========================================
#         Ejercicios adicionales
# ==========================================

# 1. Crear un script que reciba dos números y determine cuál es mayor:
#!/bin/bash
num1=$1
num2=$2

if [ $num1 -gt $num2 ]; then
  echo "$num1 es mayor que $num2"
elif [ $num1 -lt $num2 ]; then
  echo "$num1 es menor que $num2"
else
  echo "$num1 es igual a $num2"
fi

# 2. Crear un script que reciba una lista de nombres y salude a cada uno:
#!/bin/bash
for name in "$@"; do
  echo "Hello $name!"
done

# Ejecutar con:
# $ bash greet_all.sh Carol Michael Sarah

# 3. Crear un script que determine si un número es mayor o igual a 100:
#!/bin/bash
num=$1
if [ $num -ge 100 ]; then
  echo "$num es mayor o igual a 100"
else
  echo "$num es menor que 100"
fi

# ==========================================
# Explicación final
# ==========================================

# En esta sección cubrimos cómo trabajar con editores de texto (vi y nano), crear y utilizar variables, usar 
# argumentos en scripts, contar el número de argumentos y emplear lógica condicional con operadores relacionales en Bash. 
# Estos conceptos son fundamentales para automatizar tareas y construir scripts más complejos.