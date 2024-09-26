#!/bin/bash

# ##########################################
#   Variables en Bash
# ##########################################

# ==========================================
# Variables Locales
# ==========================================
# Las variables locales son accesibles solo dentro del script o función donde se definen.
# No están disponibles en los procesos hijos ni otros scripts.

# Ejemplo 1: Definir una variable local y mostrar su valor
my_local_var="Variable local"
echo $my_local_var

# Ejemplo 2: Uso de variables locales en funciones
function ejemplo_funcion() {
    local local_var_funcion="Variable local a esta función"
    echo $local_var_funcion
}
ejemplo_funcion

# Ejemplo 3: Las variables locales no están disponibles fuera de su ámbito
echo $local_var_funcion  # Esto no mostrará nada porque la variable es local a la función

# Ejemplo 4: Sobrescribir una variable local solo afecta dentro de su ámbito
my_local_var="Nuevo valor local"
echo $my_local_var


# ==========================================
# Variables de Entorno (Environment Variables)
# ==========================================
# Las variables de entorno están disponibles globalmente en todo el sistema.
# Son accesibles no solo en el script, sino también en los procesos hijos.

# Ejemplo 1: Definir una variable de entorno
export my_env_var="Variable de entorno"
echo $my_env_var

# Ejemplo 2: Ver las variables de entorno del sistema
# Se puede utilizar el comando 'printenv' para mostrar todas las variables de entorno
printenv | grep my_env_var  # Filtra solo nuestra variable personalizada

# Ejemplo 3: Las variables de entorno son heredadas por los procesos hijos
bash -c 'echo $my_env_var'  # Un proceso hijo puede acceder a esta variable

# Ejemplo 4: Variables de entorno predefinidas en el sistema
# Algunas variables como 'HOME', 'PATH', 'USER' ya existen y son usadas globalmente
echo "Tu directorio home es: $HOME"
echo "Tu usuario actual es: $USER"
echo "La ruta del sistema es: $PATH"