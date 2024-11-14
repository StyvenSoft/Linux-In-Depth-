# Array de preguntas
questions=(
    # Tema 1: La Comunidad Linux y una carrera en el mundo del código abierto
    "¿Qué organización mantiene el núcleo del sistema operativo Linux?"
    "¿Cuál de los siguientes es un principio importante del software de código abierto?"
    "¿Qué licencia de software es comúnmente usada en proyectos de código abierto?"
    "¿Cuál de los siguientes es un ejemplo de una distribución de Linux?"
    "¿Cuál es el término para las versiones modificadas de un software de código abierto?"
    "¿Cuál de los siguientes es un modelo de desarrollo colaborativo en el software de código abierto?"
    "¿Qué organización está detrás de la creación de GNU?"
    "¿Qué significa la licencia GPL en software de código abierto?"
    "¿Cuál es el objetivo principal del software libre?"
    "¿Qué significa FOSS en el contexto del software?"
    
    # Tema 2: Encontrando el camino en un sistema Linux
    "¿Cuál es el directorio raíz de un sistema de archivos Linux?"
    "¿Qué comando se utiliza para listar los archivos en un directorio?"
    "¿Cuál de los siguientes comandos muestra el directorio actual en el que te encuentras?"
    "¿Dónde se almacenan los archivos de usuario en Linux por defecto?"
    "¿Cuál es el archivo de configuración del usuario en el shell Bash?"
    "¿Qué comando cambia el directorio actual en Linux?"
    "¿Cuál es el comando para copiar un archivo en Linux?"
    "¿Qué directorio contiene los archivos de configuración del sistema en Linux?"
    "¿Cuál de las siguientes es una ruta absoluta?"
    "¿Qué archivo contiene la lista de usuarios en el sistema?"
    
    # Tema 3: El poder de la línea de comandos
    "¿Qué comando permite mostrar el contenido de un archivo en la terminal?"
    "¿Cuál es el propósito del operador '|' en la línea de comandos de Linux?"
    "¿Qué comando se usa para buscar un archivo en el sistema de archivos?"
    "¿Cuál de los siguientes permite redireccionar la salida de un comando a un archivo?"
    "¿Cómo se inicia una tarea en segundo plano en la terminal de Linux?"
    "¿Cuál es el propósito del comando 'man' en Linux?"
    "¿Qué operador permite redirigir la salida estándar a un archivo en Linux?"
    "¿Qué comando se utiliza para concatenar y mostrar el contenido de archivos?"
    "¿Cuál es el comando que muestra los procesos activos en el sistema?"
    "¿Qué operador permite agregar la salida de un comando al final de un archivo existente?"
    
    # Tema 4: El sistema operativo Linux
    "¿Qué distribución de Linux es conocida por su estabilidad y uso en servidores?"
    "¿Cuál es el entorno de escritorio que se usa comúnmente en distribuciones de Linux?"
    "¿Qué comando permite instalar paquetes en Debian y Ubuntu?"
    "¿Cuál de los siguientes describe el núcleo o kernel en un sistema Linux?"
    "¿Qué significa LTS en versiones de Linux?"
    "¿Cuál es una característica común de distribuciones orientadas a servidores como CentOS o Debian?"
    "¿Qué componente de Linux gestiona el hardware y los recursos del sistema?"
    "¿Qué sistema de empaquetado es común en distribuciones basadas en Red Hat?"
    "¿Qué directorio se utiliza típicamente para archivos de registro en Linux?"
    "¿Cuál es el nombre del proceso raíz o primer proceso que se ejecuta al iniciar Linux?"
    
    # Tema 5: Seguridad y sistema de permisos de archivos
    "¿Qué permiso permite a un usuario leer el contenido de un archivo en Linux?"
    "¿Cuál de los siguientes comandos cambia los permisos de un archivo en Linux?"
    "¿Cuál es el comando para cambiar el propietario de un archivo en Linux?"
    "¿Qué permiso se necesita para ejecutar un archivo en Linux?"
    "¿Cuál es el comando para ver los permisos de archivos y directorios en Linux?"
    "¿Qué permiso se necesita para modificar el contenido de un archivo?"
    "¿Cuál de los siguientes comandos cambia el grupo de un archivo en Linux?"
    "¿Qué permiso permite a un usuario cambiar a un directorio?"
    "¿Qué significa 'rwxr-xr--' en términos de permisos de archivo?"
    "¿Qué comando muestra el ID del usuario actual y el grupo al que pertenece?"
)

# Array de opciones de respuesta
options=(
    # Tema 1: La Comunidad Linux y una carrera en el mundo del código abierto
    "a) FSF\nb) GNU\nc) Linux Foundation\nd) Open Source Initiative"
    "a) Acceso restringido\nb) Libertad de modificar el código\nc) Uso gratuito en todos los casos\nd) Exclusividad de propiedad"
    "a) Licencia BSD\nb) MIT\nc) GPL\nd) Apache"
    "a) Microsoft Windows\nb) Ubuntu\nc) iOS\nd) FreeBSD"
    "a) Forks\nb) Binarios\nc) Compilaciones\nd) Depuraciones"
    "a) Modelo individual\nb) Modelo colaborativo\nc) Modelo de suscripción\nd) Modelo empresarial"
    "a) Linux Foundation\nb) Mozilla Foundation\nc) Free Software Foundation\nd) Apache Foundation"
    "a) General Public License\nb) General Private License\nc) GNU Private License\nd) GNU Public License"
    "a) Ser propietario de software\nb) Facilitar el acceso y uso sin restricciones\nc) Generar ingresos\nc) Controlar el código"
    "a) Free and Open Source Software\nb) Free Operating System Software\nc) Full Open Source System\nd) Free and Online Software Service"
    
    # Tema 2: Encontrando el camino en un sistema Linux
    "a) /root\nb) /home\nc) /\nd) /etc"
    "a) cd\nb) pwd\nc) ls\nd) cp"
    "a) ls\nb) cd\nc) home\nd) pwd"
    "a) /root\nb) /usr\nc) /home\nd) /var"
    "a) /etc/bash.conf\nb) .bash_profile\nc) .bashrc\nd) bash.sh"
    "a) ls\nb) cd\nc) mv\nd) rm"
    "a) cp\nb) mv\nc) rm\nd) cd"
    "a) /var\nb) /etc\nc) /usr\nd) /bin"
    "a) etc\nb) ./home/user\nc) /home/user\nd) user"
    "a) /etc/passwd\nb) /var/log\nc) /etc/shadow\nd) /home"
    
    # Tema 3: El poder de la línea de comandos
    "a) ls\nb) pwd\nc) cat\nd) cd"
    "a) Ejecutar varios comandos a la vez\nb) Redirigir la salida de un comando a otro\nc) Terminar un proceso\nd) Guardar la salida en un archivo"
    "a) pwd\nb) find\nc) search\nd) ls"
    "a) >\nb) |\nc) <\nd) ;"
    "a) bg\nb) fg\nc) exec\nd) top"
    "a) Proporcionar información sobre archivos\nb) Mostrar la documentación de comandos\nc) Crear archivos temporales\nd) Cambiar permisos"
    "a) >\nb) |\nc) <\nd) ;"
    "a) mv\nb) echo\nc) cat\nd) grep"
    "a) top\nb) mkdir\nc) man\nd) cp"
    "a) |\nb) ;\nc) &\nd) >>"
    
    # Tema 4: El sistema operativo Linux
    "a) Ubuntu\nb) Arch Linux\nc) Debian\nd) Fedora"
    "a) GNOME\nb) Windows\nc) KDE\nd) macOS"
    "a) apt-get\nb) yum\nc) install\nd) addpkg"
    "a) Una interfaz gráfica\nb) El núcleo del sistema operativo\nc) Un conjunto de aplicaciones\nd) Un directorio especial"
    "a) Linux Technical Support\nb) Long-Term Support\nc) Limited Technical Service\nd) Last Technical Support"
    "a) Facilidad de uso para usuarios finales\nb) Estabilidad y soporte a largo plazo\nc) Últimas actualizaciones de software\nd) Interfaz gráfica avanzada"
    "a) Escritorio\nb) Terminal\nc) Kernel\nd) Comando"
    "a) dpkg\nb) tar\nc) rpm\nd) apt"
    "a) /home\nb) /var/log\nc) /boot\nd) /lib"
    "a) init\nb) sudo\nc) top\nd) ls"
    
    # Tema 5: Seguridad y sistema de permisos de archivos
    "a) rwx\nb) r\nc) w\nd) x"
    "a) chmod\nb) chown\nc) mv\nd) ls"
    "a) ls\nb) chown\nc) chmod\nd) mv"
    "a) r\nb) w\nc) x\nd) rw"
    "a) chmod\nb) chown\nc) ls -l\nd) ps"
    "a) r\nb) w\nc) x\nd) rwx"
    "a) chown\nb) chmod\nc) mv\nd) chgrp"
    "a) r\nb) w\nc) x\nd) rw"
    "a) Lectura, escritura y ejecución para todos\nb) Lectura y ejecución para grupo y otros\nc) Solo escritura para el usuario\nc) Ejecución para todos"
    "a) ps\nb) whoami\nc) id\nd) chmod"
)

# Array de respuestas correctas
correct_answers=(
    # Tema 1
    "c" "b" "c" "b" "a" "b" "c" "a" "b" "a"
    
    # Tema 2
    "c" "c" "d" "c" "c" "b" "a" "b" "c" "a"
    
    # Tema 3
    "c" "b" "b" "a" "a" "b" "a" "c" "a" "d"
    
    # Tema 4
    "c" "a" "a" "b" "b" "b" "c" "c" "b" "a"
    
    # Tema 5
    "b" "a" "b" "c" "c" "b" "d" "c" "b" "c"
)