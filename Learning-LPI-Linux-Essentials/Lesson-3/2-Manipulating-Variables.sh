#!/bin/bash

# ##########################################
#   Manipulando Variables en Bash
# ##########################################

# ==========================================
# Trabajando con Variables Locales
# ==========================================
# Las variables locales solo son visibles dentro del script o función en que se definen.
# No afectan a otros scripts ni procesos fuera de su ámbito.

# Ejemplo 1: Definir y acceder a una variable local
local_var="Valor local"
echo "Valor de local_var: $local_var"

# Ejemplo 2: Modificar una variable local
local_var="Nuevo valor local"
echo "Nuevo valor de local_var: $local_var"

# Ejemplo 3: Uso de variables locales dentro de una función
function modificar_local() {
    local local_in_func="Variable local dentro de la función"
    echo "Dentro de la función: $local_in_func"
}
modificar_local

# ==========================================
# Trabajando con Variables Globales
# ==========================================
# Las variables globales (de entorno) están disponibles para el script y cualquier proceso hijo.

# Ejemplo 1: Definir una variable global con 'export'
export global_var="Valor global"
echo "Valor de global_var: $global_var"

# Ejemplo 2: Las variables globales pueden ser accedidas por procesos hijos
bash -c 'echo "Variable global en proceso hijo: $global_var"'

# Ejemplo 3: Modificar una variable global
export global_var="Nuevo valor global"
echo "Nuevo valor de global_var: $global_var"

# ==========================================
# La Variable PATH
# ==========================================
# PATH es una variable de entorno especial que contiene las rutas donde el sistema busca los ejecutables.
# Modificar PATH puede afectar qué comandos y programas se pueden ejecutar.

# Ejemplo 1: Ver el valor actual de la variable PATH
echo "El valor de PATH es: $PATH"

# Ejemplo 2: Añadir un nuevo directorio a PATH
# Añadimos /usr/local/bin al inicio de PATH
export PATH="/usr/local/bin:$PATH"
echo "Nuevo valor de PATH: $PATH"

# Ejemplo 3: Añadir un directorio al final de PATH
# Ahora añadimos ~/scripts al final de PATH
export PATH="$PATH:~/scripts"
echo "Nuevo valor de PATH con ~/scripts añadido: $PATH"

# Ejemplo 4: Restaurar PATH a su valor original
# Puedes restablecer PATH a su valor predeterminado si es necesario (dependerá de tu sistema)
# Aquí solo se muestra un ejemplo básico, sin restablecer realmente:
original_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH=$original_path
echo "PATH restaurado: $PATH"

# El comando which utiliza PATH para determinar en qué directorio se encuentra el ejecutable de un comando.

# Ver la ruta de un comando específico:

which ls

# /bin/ls

which python

# /usr/bin/python

# script bash:

# Comprobar la ubicación de git
echo "Git se encuentra en: $(which git)"

# Comprobar si python está instalado
if which python > /dev/null; then
    echo "Python está instalado en: $(which python)"
else
    echo "Python no está instalado"
fi