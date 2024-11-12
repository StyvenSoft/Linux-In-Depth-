# Array de preguntas
questions=(
    # Tema 1: La Comunidad Linux y una carrera en el mundo del código abierto
    "¿Qué organización mantiene el núcleo del sistema operativo Linux?"
    "¿Cuál de los siguientes es un principio importante del software de código abierto?"
    "¿Qué licencia de software es comúnmente usada en proyectos de código abierto?"
    "¿Cuál de los siguientes es un ejemplo de una distribución de Linux?"
    "¿Cuál es el término para las versiones modificadas de un software de código abierto?"
    
    # Tema 2: Encontrando el camino en un sistema Linux
    "¿Cuál es el directorio raíz de un sistema de archivos Linux?"
    "¿Qué comando se utiliza para listar los archivos en un directorio?"
    "¿Cuál de los siguientes comandos muestra el directorio actual en el que te encuentras?"
    "¿Dónde se almacenan los archivos de usuario en Linux por defecto?"
    "¿Cuál es el archivo de configuración del usuario en el shell Bash?"
    
    # Tema 3: El poder de la línea de comandos
    "¿Qué comando permite mostrar el contenido de un archivo en la terminal?"
    "¿Cuál es el propósito del operador '|' en la línea de comandos de Linux?"
    "¿Qué comando se usa para buscar un archivo en el sistema de archivos?"
    "¿Cuál de los siguientes permite redireccionar la salida de un comando a un archivo?"
    "¿Cómo se inicia una tarea en segundo plano en la terminal de Linux?"
    
    # Tema 4: El sistema operativo Linux
    "¿Qué distribución de Linux es conocida por su estabilidad y uso en servidores?"
    "¿Cuál es el entorno de escritorio que se usa comúnmente en distribuciones de Linux?"
    "¿Qué comando permite instalar paquetes en Debian y Ubuntu?"
    "¿Cuál de los siguientes describe el núcleo o kernel en un sistema Linux?"
    "¿Qué significa LTS en versiones de Linux?"
    
    # Tema 5: Seguridad y sistema de permisos de archivos
    "¿Qué permiso permite a un usuario leer el contenido de un archivo en Linux?"
    "¿Cuál de los siguientes comandos cambia los permisos de un archivo en Linux?"
    "¿Cuál es el comando para cambiar el propietario de un archivo en Linux?"
    "¿Qué permiso se necesita para ejecutar un archivo en Linux?"
    "¿Cuál es el comando para ver los permisos de archivos y directorios en Linux?"
)

# Array de opciones de respuesta
options=(
    # Tema 1: La Comunidad Linux y una carrera en el mundo del código abierto
    "a) FSF\nb) GNU\nc) Linux Foundation\nd) Open Source Initiative"
    "a) Acceso restringido\nb) Libertad de modificar el código\nc) Uso gratuito en todos los casos\nd) Exclusividad de propiedad"
    "a) Licencia BSD\nb) MIT\nc) GPL\nd) Apache"
    "a) Microsoft Windows\nb) Ubuntu\nc) iOS\nd) FreeBSD"
    "a) Forks\nb) Binarios\nc) Compilaciones\nd) Depuraciones"
    
    # Tema 2: Encontrando el camino en un sistema Linux
    "a) /root\nb) /home\nc) /\nd) /etc"
    "a) cd\nb) pwd\nc) ls\nd) cp"
    "a) ls\nb) cd\nc) home\nd) pwd"
    "a) /root\nb) /usr\nc) /home\nd) /var"
    "a) /etc/bash.conf\nb) .bash_profile\nc) .bashrc\nd) bash.sh"
    
    # Tema 3: El poder de la línea de comandos
    "a) ls\nb) pwd\nc) cat\nd) cd"
    "a) Ejecutar varios comandos a la vez\nb) Redirigir la salida de un comando a otro\nc) Terminar un proceso\nd) Guardar la salida en un archivo"
    "a) pwd\nb) find\nc) search\nd) ls"
    "a) >\nb) |\nc) <\nd) ;"
    "a) bg\nb) fg\nc) exec\nd) top"
    
    # Tema 4: El sistema operativo Linux
    "a) Ubuntu\nb) Arch Linux\nc) Debian\nd) Fedora"
    "a) GNOME\nb) Windows\nc) KDE\nd) macOS"
    "a) apt-get\nb) yum\nc) install\nd) addpkg"
    "a) Una interfaz gráfica\nb) El núcleo del sistema operativo\nc) Un conjunto de aplicaciones\nd) Un directorio especial"
    "a) Linux Technical Support\nb) Long-Term Support\nc) Limited Technical Service\nd) Last Technical Support"
    
    # Tema 5: Seguridad y sistema de permisos de archivos
    "a) rwx\nb) r\nc) w\nd) x"
    "a) chmod\nb) chown\nc) mv\nd) ls"
    "a) ls\nb) chown\nc) chmod\nd) mv"
    "a) r\nb) w\nc) x\nd) rw"
    "a) chmod\nb) chown\nc) ls -l\nd) ps"
)

# Array de respuestas correctas
correct_answers=(
    # Tema 1
    "c" "b" "c" "b" "a"
    
    # Tema 2
    "c" "c" "d" "c" "c"
    
    # Tema 3
    "c" "b" "b" "a" "a"
    
    # Tema 4
    "c" "a" "a" "b" "b"
    
    # Tema 5
    "b" "a" "b" "c" "c"
)