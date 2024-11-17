#!/bin/bash

# Exploración de registros del sistema y manejo de logs en Linux

# Iniciar sesión con el demonio syslog
# El syslog es un demonio encargado de recolectar y almacenar mensajes del sistema.

echo "=== Explorando Archivos de Registro en /var/log ==="
# Los archivos de registro más comunes en /var/log incluyen:
# - /var/log/auth.log: Registro de autenticación y seguridad.
# - /var/log/kern.log: Mensajes del kernel.
# - /var/log/syslog: Mensajes del sistema.
# - /var/log/messages: Información general del sistema (en algunas distribuciones).

# Listar los archivos de registro en /var/log
ls /var/log

echo "=== Accediendo a Archivos de Registro ==="
# Para ver el contenido de un archivo de registro, se puede usar 'less' o 'tail':
# Ver los registros del sistema con less
less /var/log/syslog
# 'less' permite explorar el archivo de manera interactiva.

# Ver los últimos 10 registros en tiempo real
tail -f /var/log/syslog
# 'tail -f' sigue los registros en tiempo real, útil para monitorear eventos a medida que ocurren.

# Ver información sobre el archivo de registros de inicio de sesión
file /var/log/wtmp
# El archivo /var/log/wtmp almacena información de inicios de sesión y cierres de sesión.

# Ver el historial de inicios de sesión con 'last'
last
# El comando 'last' muestra una lista de los últimos inicios y cierres de sesión del sistema.

# Listar registros del servidor web Apache (si está instalado)
ls /var/log/apache2/
# El directorio /var/log/apache2/ almacena registros del servidor web Apache.

echo "=== Kernel Ring Buffer ==="
# El buffer de anillo del kernel almacena mensajes del kernel que se pueden visualizar con 'dmesg'.
dmesg | grep boot
# Muestra mensajes de inicio del kernel usando 'dmesg' con el filtro 'grep boot'.

echo "=== Diario del Sistema con systemd-journald ==="
# El diario del sistema almacena mensajes de registro administrados por 'systemd-journald'.

# Visualizar el diario completo
journalctl
# Muestra los registros del diario del sistema.

# Ver solo los mensajes del kernel
journalctl -k
# La opción '-k' muestra mensajes relacionados con el kernel.

# Opciones útiles de 'journalctl':
# -b, --boot: Ver mensajes del arranque actual.
journalctl -b
# -u: Mostrar registros de una unidad de servicio específica.
journalctl -u sshd
# -f: Seguir los registros en tiempo real, similar a 'tail -f'.
journalctl -f

# Ejercicios prácticos:
# 1. Usa 'less' para ver el contenido de /var/log/syslog y explora las diferentes secciones del archivo.
# 2. Monitorea los registros en tiempo real con 'tail -f /var/log/syslog' mientras realizas operaciones en el sistema.
# 3. Utiliza 'dmesg | grep boot' para ver los mensajes de arranque del kernel.
# 4. Revisa el diario del sistema usando 'journalctl' y prueba diferentes opciones como '-b', '-k', y '-u sshd'.