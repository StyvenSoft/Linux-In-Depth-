#!/bin/bash
# Archivos de configuración del sistema y gestión de usuarios en Linux

echo "=== /etc/passwd ==="
# El archivo /etc/passwd almacena información básica de las cuentas de usuario.
# Cada línea representa un usuario y tiene la siguiente estructura:
# USERNAME:PASSWORD:UID:GID:GECOS:HOMEDIR:SHELL

# Campos del archivo /etc/passwd:
# - USERNAME: El nombre del usuario.
# - PASSWORD: Se indica con 'x' cuando las contraseñas están encriptadas en /etc/shadow.
# - UID: El Identificador de Usuario, un número que identifica al usuario en el sistema.
# - GID: El Identificador del Grupo Primario, que determina el grupo al que pertenece el usuario.
# - GECOS: Información adicional, generalmente en formato "Nombre Completo,Ubicación,Contacto".
# - HOMEDIR: El directorio de inicio del usuario.
# - SHELL: El shell predeterminado que se ejecuta al iniciar sesión.

# Mostrar el contenido de /etc/passwd:
cat /etc/passwd

echo "=== Comprendiendo el campo GECOS ==="
# El campo GECOS puede incluir información como:
# - NAME: Nombre completo del usuario.
# - LOCATION: Ubicación física del usuario, como una oficina.
# - CONTACT: Información de contacto, como un número de teléfono o correo electrónico.

# Ejemplo de línea en /etc/passwd:
# emma:x:1000:1000:Emma Smith,42 Douglas St,555.555.5555:/home/emma:/bin/bash

echo "=== Comando chfn ==="
# El comando 'chfn' se usa para cambiar la información del campo GECOS del usuario actual o especificado.
# Ejemplo: Cambiar el nombre completo y la información de contacto
sudo chfn -f "Emma Smith" -o "42 Douglas St,555.555.5555" emma

echo "=== /etc/group ==="
# El archivo /etc/group contiene información de los grupos del sistema.
# Cada línea sigue el formato:
# NAME:PASSWORD:GID:MEMBERS

# Campos del archivo /etc/group:
# - NAME: Nombre del grupo.
# - PASSWORD: Contraseña del grupo (generalmente se indica con 'x').
# - GID: Identificador del grupo.
# - MEMBERS: Lista de usuarios que pertenecen al grupo, separados por comas.

# Mostrar el contenido de /etc/group:
cat /etc/group

echo "=== /etc/shadow ==="
# El archivo /etc/shadow almacena contraseñas cifradas y la información de la cuenta del usuario.
# Solo accesible por root por razones de seguridad.
# Formato:
# USERNAME:PASSWORD:LASTCHANGE:MINAGE:MAXAGE:WARN:INACTIVE:EXPDATE

# Campos del archivo /etc/shadow:
# - USERNAME: Nombre del usuario.
# - PASSWORD: Contraseña cifrada.
# - LASTCHANGE: Número de días desde el 1 de enero de 1970 en que se cambió la contraseña por última vez.
# - MINAGE: Días mínimos antes de que se pueda cambiar la contraseña.
# - MAXAGE: Días máximos antes de que se requiera un cambio de contraseña.
# - WARN: Días antes de la expiración para advertir al usuario.
# - INACTIVE: Días después de la expiración durante los cuales la cuenta permanece activa.
# - EXPDATE: Fecha de expiración de la cuenta en formato de días desde el 1 de enero de 1970.

# Mostrar el contenido de /etc/shadow (requiere permisos de superusuario):
sudo cat /etc/shadow

echo "=== Ejercicios prácticos ==="
# 1. Utiliza 'chfn' para cambiar la información de contacto de un usuario.
# 2. Consulta el archivo /etc/passwd y describe cada campo de una cuenta específica.
# 3. Verifica los grupos en /etc/group y muestra los miembros de un grupo específico.
# 4. Observa el archivo /etc/shadow y explica qué significan los valores en los campos de una cuenta.