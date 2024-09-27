#!/bin/bash

echo "##############################################"
echo "# Obteniendo ayuda por línea de comandos     #"
echo "##############################################"

# Explicación sobre los comandos de ayuda en Linux

# Comando 'man':
# El comando 'man' muestra el manual de un comando específico.
# Ejemplo: Mostrar la página del manual del comando 'ls'
echo "Ejemplo: man ls"
man ls

# Comando 'help':
# El comando 'help' es utilizado para obtener ayuda de comandos internos de la shell.
# Ejemplo: Obtener ayuda sobre el comando 'cd'
echo "Ejemplo: help cd"
help cd

# Comando 'info':
# El comando 'info' muestra documentación más detallada y estructurada que 'man'.
# Ejemplo: Obtener información detallada sobre 'ls'
echo "Ejemplo: info ls"
info ls

# Directorio /usr/share/doc/:
# El directorio /usr/share/doc/ contiene documentación y archivos README para los programas instalados.
# Ejemplo: Listar los archivos dentro del directorio /usr/share/doc/ para ver la documentación disponible
echo "Ejemplo: Listar el contenido del directorio /usr/share/doc/"
ls /usr/share/doc/

# Comando 'locate':
# El comando 'locate' busca rápidamente archivos en el sistema utilizando una base de datos actualizada.
# Ejemplo: Buscar cualquier archivo con la palabra 'passwd'
echo "Ejemplo: locate passwd"
locate passwd

# Comando 'find':
# El comando 'find' busca archivos y directorios dentro del sistema de archivos basándose en criterios específicos.
# Ejemplo: Buscar archivos en el directorio /etc/ que terminen en '.conf'
echo "Ejemplo: find /etc/ -name '*.conf'"
find /etc/ -name "*.conf"