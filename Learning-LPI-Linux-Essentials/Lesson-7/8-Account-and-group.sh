#!/bin/bash
# Tema: Administración de cuentas y grupos en Linux

# Agregar y eliminar cuentas de usuario
# =====================================
# Para agregar un nuevo usuario, se usa el comando `useradd` seguido del nombre del usuario.
# Ejemplo: Crear el usuario "steveen"
useradd steveen

# Para establecer la contraseña para el usuario recién creado, utilizamos `passwd`.
# Ejemplo: Establecer la contraseña para el usuario "steveen"
passwd steveen

# Opciones comunes de `useradd`:
# -c: Especifica el comentario GECOS del usuario
useradd -c "Steveen Smith, Administrador de Sistemas" steveen

# -d: Define el directorio de inicio del usuario
useradd -d /home/steveen_custom steveen

# -e: Fecha de expiración de la cuenta en formato YYYY-MM-DD
useradd -e 2025-12-31 steveen

# -f: Número de días después de la expiración de la contraseña para desactivar la cuenta
useradd -f 10 steveen

# -g: Define el grupo principal del usuario
useradd -g developers steveen

# -G: Define los grupos adicionales a los que pertenece el usuario
useradd -G sudo,users steveen

# -m: Crea automáticamente el directorio de inicio si no existe
useradd -m steveen

# -M: No crea el directorio de inicio (aunque por defecto, ya no lo crea)
useradd -M steveen

# -s: Especifica la shell por defecto para el usuario
useradd -s /bin/bash steveen

# -u: Especifica un UID personalizado
useradd -u 1050 steveen

# Para verificar los detalles del usuario creado, se puede usar `id`
id steveen

# Para listar los grupos a los que pertenece el usuario
groups steveen

# Eliminar un usuario y su directorio de inicio
userdel -r steveen

# El directorio skel
# ==================
# Cuando se crea un nuevo usuario, se copian los archivos del directorio `/etc/skel` al nuevo directorio de inicio.
# Los archivos de `/etc/skel` son plantillas de configuración predeterminadas para cada usuario nuevo.

# Agregar y eliminar grupos
# =========================
# Para agregar un nuevo grupo, usamos `groupadd`
# Ejemplo: Crear un grupo llamado "developer" con GID 1090
groupadd -g 1090 developer

# Para eliminar un grupo, usamos `groupdel`
groupdel developer

# El comando passwd
# =================
# El comando `passwd` se utiliza para cambiar contraseñas y gestionar la configuración de estas.

# Opciones comunes de `passwd`:
# -d: Elimina la contraseña del usuario, permitiendo el acceso sin contraseña
passwd -d steveen

# -e: Fuerza al usuario a cambiar la contraseña en el próximo inicio de sesión
passwd -e steveen

# -l: Bloquea la cuenta del usuario
passwd -l steveen

# -u: Desbloquea la cuenta del usuario
passwd -u steveen

# -S: Muestra el estado de la contraseña del usuario
passwd -S steveen

# Ejercicios prácticos
# ====================
# 1. Crear un usuario "maria" con el directorio de inicio en `/home/maria_custom`, perteneciente al grupo "marketing" y con la shell `/bin/zsh`.
useradd -m -d /home/maria_custom -g marketing -s /bin/zsh maria

# 2. Asignar una contraseña a "maria" y luego bloquear su cuenta.
passwd maria
passwd -l maria

# 3. Crear un grupo llamado "proyectos" con GID 1200 y luego eliminarlo.
groupadd -g 1200 proyectos
groupdel proyectos