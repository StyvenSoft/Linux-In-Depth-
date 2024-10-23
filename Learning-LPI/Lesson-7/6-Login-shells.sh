#!/bin/bash
# Shells de inicio de sesión y gestión de usuarios en Linux

echo "=== Shells de inicio de sesión y directorios de inicio ==="
# Cada usuario tiene un shell asignado y un directorio de inicio donde se almacenan sus archivos.
# El shell predeterminado es el programa que se ejecuta cuando un usuario inicia sesión.

# Para cambiar el shell predeterminado, utiliza el comando 'chsh':
# Cambiar el shell del usuario actual a /usr/bin/zsh
chsh -s /usr/bin/zsh
# Esto requerirá que cierres la sesión y vuelvas a iniciarla para que el cambio tenga efecto.

# Para verificar el shell actual, puedes usar:
echo $SHELL

echo "=== Obtener información sobre los usuarios ==="
# Puedes obtener información sobre los usuarios conectados, sus ID y sesiones activas.

# El comando 'id' muestra el UID, GID y grupos del usuario actual.
id

# El comando 'last' muestra una lista de los últimos usuarios que han iniciado sesión.
last

# El comando 'who' muestra quién está actualmente conectado al sistema.
who

# El comando 'w' también muestra los usuarios conectados, junto con información adicional.
w

echo "=== Cambio de usuarios y aumento de privilegios ==="
# Puedes cambiar de usuario o aumentar los privilegios para ejecutar comandos como otro usuario.

# El comando 'su -' cambia al superusuario (root). Requiere la contraseña de root.
# su -

# 'sudo' permite ejecutar comandos con privilegios de superusuario. Requiere pertenecer al grupo sudoers.
# Ejemplo: Ejecutar 'apt update' con privilegios de administrador
# sudo apt update

echo "=== Archivos de control de acceso ==="
# Los archivos de configuración de control de acceso en Linux contienen información sobre usuarios y permisos.

# El archivo /etc/passwd almacena información básica de las cuentas de usuario.
cat /etc/passwd

# El archivo /etc/group contiene los grupos y sus miembros.
cat /etc/group

# El archivo /etc/shadow almacena las contraseñas cifradas y la información de expiración de las cuentas.
sudo cat /etc/shadow

# El archivo /etc/gshadow almacena información confidencial de grupos.
sudo cat /etc/gshadow

# El archivo /etc/sudoers especifica los usuarios que tienen permisos para ejecutar comandos como root.
# Editar este archivo debe hacerse con visudo para evitar errores:
# sudo visudo

# También es posible crear archivos adicionales en /etc/sudoers.d para configurar permisos específicos.
# sudo visudo -f /etc/sudoers.d/miarchivo

echo "=== Ejercicios Prácticos ==="
# 1. Cambia tu shell predeterminado a bash usando 'chsh -s /usr/bin/bash'.
# 2. Usa 'id' para ver tu UID, GID y grupos.
# 3. Utiliza 'who' para ver los usuarios conectados y 'w' para obtener detalles adicionales.
# 4. Cambia a root con 'su -' y luego vuelve a tu usuario con 'exit'.
# 5. Revisa el contenido de /etc/passwd y /etc/group para conocer la información de las cuentas.