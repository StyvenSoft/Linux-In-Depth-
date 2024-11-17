#!/bin/bash
# Gestión de cuentas de usuario y grupos en Linux: Cuentas, Identificadores, y Tipos de cuentas

echo "=== Identificadores de usuarios y grupos (UIDs/GIDs) ==="
# En Linux, cada usuario tiene un UID (User ID) y cada grupo tiene un GID (Group ID).
# Estos identificadores son números únicos asignados a usuarios y grupos para gestionar permisos.

# Para ver el UID y GID del usuario actual, utiliza:
id
# Este comando muestra el UID, el GID principal y los grupos adicionales del usuario conectado.

echo "=== La cuenta de superusuario ==="
# El superusuario, también conocido como root, tiene el UID 0 y privilegios administrativos.
# Esta cuenta tiene acceso completo al sistema y puede ejecutar cualquier comando.

# Para cambiar al superusuario, se usa:
sudo su
# Esto requiere la contraseña del usuario actual si está autorizado para usar sudo.

echo "=== Cuentas de usuario estándar ==="
# Los usuarios estándar son aquellos que no tienen privilegios administrativos.
# En la mayoría de los sistemas, los UIDs para usuarios estándar comienzan a partir de 1000.
# Estas cuentas son para usuarios regulares que utilizan el sistema para tareas cotidianas.

# Puedes ver la información de los usuarios del sistema en el archivo /etc/passwd:
cat /etc/passwd
# Cada línea representa una cuenta de usuario y contiene campos como nombre de usuario, UID y directorio de inicio.

echo "=== Cuentas del sistema ==="
# Las cuentas del sistema se utilizan para ejecutar servicios y procesos específicos.
# Generalmente tienen UIDs por debajo de 1000 y no están asociadas a usuarios reales.
# Ejemplos: usuarios como 'daemon', 'bin' o 'nobody'.

# Para ver solo las cuentas del sistema, puedes filtrar el archivo /etc/passwd:
grep '^[^:]*:[^:]*:[0-9]\{1,3\}:' /etc/passwd
# Esto muestra las cuentas con UIDs de 1 a 999, que suelen ser cuentas del sistema.

echo "=== Cuentas de servicio ==="
# Las cuentas de servicio son un tipo de cuenta del sistema utilizadas por servicios y aplicaciones.
# Estas cuentas tienen permisos específicos y están asociadas a servicios como 'apache', 'mysql', etc.
# Sus UIDs varían, pero generalmente están por debajo de 1000 y son utilizadas por demonios del sistema.

echo "=== Ejercicios Prácticos ==="
# 1. Ejecuta 'id' para ver tu UID y GID.
# 2. Busca el archivo /etc/passwd y encuentra los UIDs que están por debajo de 1000.
# 3. Cambia al superusuario con 'sudo su' y verifica el UID actual con 'id'.
# 4. Intenta crear un nuevo usuario con 'sudo useradd nuevo_usuario' y verifica su UID en /etc/passwd.
# 5. Consulta los procesos del sistema usando 'ps aux' y observa las cuentas de servicio que ejecutan los demonios.