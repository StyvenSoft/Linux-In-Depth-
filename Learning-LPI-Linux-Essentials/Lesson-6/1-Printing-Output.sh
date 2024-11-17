#!/bin/bash

# ==========================================
#            Imprimiendo salidas (Printing Output)
# ==========================================

# El comando `echo` es fundamental para imprimir texto en la terminal. 
# Es útil para mensajes simples y también para depuración dentro de scripts.

# Ejercicio práctico:

# 1. Imprimir un mensaje simple:
echo "Hello World!"

# 2. Redirigir el resultado de `echo` para crear un nuevo script:
echo 'echo "Hello World!"' > new_script

# ==========================================
#        Cómo ejecutar un script
# ==========================================

# Para ejecutar un script en Bash, debes tener el archivo de script y darle permisos de ejecución.

# Ejercicio práctico:

# 1. Ejecutar un script directamente:
# Si has creado `new_script`, puedes ejecutarlo de la siguiente manera:
bash new_script

# ==========================================
#        Comandos y PATH
# ==========================================

# El sistema utiliza la variable de entorno `PATH` para buscar comandos cuando los ejecutas.
# Si ejecutas un comando como `ls`, el sistema lo busca en los directorios listados en `PATH`.

# Ejercicio práctico:

# 1. Verificar la ubicación de un comando (como `ls`):
which ls

# 2. Mostrar la variable `PATH` para ver los directorios donde Bash busca comandos:
echo $PATH

# ==========================================
#        Ejecutar Permisos
# ==========================================

# Un script debe tener permisos de ejecución para que puedas ejecutarlo directamente. 
# Para otorgar permisos de ejecución a un archivo, utilizamos `chmod`.

# Ejercicio práctico:

# 1. Dar permisos de ejecución a `new_script`:
chmod +x new_script

# 2. Ahora puedes ejecutar `new_script` directamente sin usar `bash`:
./new_script

# ==========================================
#        Definición del intérprete (Shebang)
# ==========================================

# El `shebang` es una línea especial al inicio de un script que define el intérprete a usar.
# Generalmente, el shebang se ve así: `#!/bin/bash`. 
# Esto le dice al sistema que use Bash para ejecutar el script.

# Ejercicio práctico:

# 1. Crear un script con shebang:
echo '#!/bin/bash' > new_script_with_shebang
echo 'echo "Hello from the shebang script!"' >> new_script_with_shebang

# 2. Dar permisos de ejecución y ejecutarlo:
chmod +x new_script_with_shebang
./new_script_with_shebang

# 3. Verificar la ubicación de `bash` en tu sistema (por si acaso):
which bash

# ==========================================
#        Ejercicios adicionales
# ==========================================

# 1. Crear un script que imprima tu nombre:
echo '#!/bin/bash' > print_name.sh
echo 'echo "My name is $(whoami)"' >> print_name.sh
chmod +x print_name.sh
./print_name.sh

# 2. Agregar un nuevo directorio a la variable `PATH` y ejecutar un script desde ese directorio:

# 2.1 Crear un nuevo directorio:
mkdir ~/scripts

# 2.2 Mover el script a ese directorio:
mv print_name.sh ~/scripts/

# 2.3 Agregar el directorio a `PATH` temporalmente:
export PATH=$PATH:~/scripts

# 2.4 Ahora puedes ejecutar `print_name.sh` desde cualquier lugar:
print_name.sh

# Nota: Para hacer que los cambios en `PATH` sean permanentes, debes agregar `export PATH=$PATH:~/scripts` a tu archivo `~/.bashrc`.

# 3. Crear un script que imprima el contenido de la variable `PATH` y ejecute un comando desde ella:
echo '#!/bin/bash' > show_path_and_ls.sh
echo 'echo "Current PATH: $PATH"' >> show_path_and_ls.sh
echo 'ls' >> show_path_and_ls.sh
chmod +x show_path_and_ls.sh
./show_path_and_ls.sh

# ==========================================
# Explicación final
# ==========================================

# Con `echo` podemos imprimir cualquier salida que necesitemos, ya sea para mostrar mensajes o generar scripts. 
# Con `chmod +x` habilitamos la ejecución de scripts que creemos. 
# Usando el `shebang`, indicamos al sistema qué intérprete utilizar. 
# El manejo del `PATH` es crucial para organizar y ejecutar comandos y scripts fácilmente desde cualquier ubicación.