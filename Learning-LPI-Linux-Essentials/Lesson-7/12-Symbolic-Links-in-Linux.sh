#!/bin/bash
# Tema: Enlaces Simbólicos en Linux

# Enlaces Simbólicos (Soft Links)
# ===============================
# Los enlaces simbólicos apuntan a la ruta de un archivo o directorio original.
# - No ocupan el mismo espacio que el archivo original.
# - Se pueden usar para apuntar a archivos o directorios en distintas ubicaciones.

# Crear enlaces simbólicos
# ========================
# La sintaxis para crear un enlace simbólico es `ln -s TARGET LINK_NAME`.

# Ejemplo: Crear un enlace simbólico "softlink" que apunte al archivo "target.txt".
# Esto crea un acceso directo a "target.txt" en la ubicación `/home/carol/Documents/softlink`.
touch target.txt  # Crear archivo base
ln -s target.txt /home/carol/Documents/softlink

# Verificar el enlace simbólico creado
# `ls -lh` muestra detalles de permisos, propietario y tamaño.
ls -lh /home/carol/Documents/softlink

# Notarás que el enlace simbólico tiene un indicador `->` que apunta a "target.txt".
# Si mueves o eliminas "target.txt", el enlace simbólico se "rompe" y mostrará un error al intentar acceder.

# Administrar enlaces simbólicos
# ==============================
# Los enlaces simbólicos se gestionan de la misma forma que los archivos regulares.

# Ejemplo: Crear un enlace simbólico llamado "softlink" que apunte a "original.txt".
touch original.txt  # Crear archivo base
ln -s original.txt softlink

# Verificar el enlace simbólico y confirmar la ruta
ls -lh softlink

# Mover enlaces simbólicos
# ========================
# Los enlaces simbólicos pueden ser movidos a otras ubicaciones.

# Ejemplo: Mover el enlace simbólico "softlink" al directorio superior.
mv softlink ../

# Verificar que el enlace se haya movido correctamente y que apunte al archivo correcto.
ls -lh ../softlink

# Acceder a los datos del archivo enlazado mediante el enlace simbólico
# Utilizar `less` o `cat` para ver el contenido del archivo original usando el enlace.
echo "Contenido de prueba" > original.txt
less ../softlink

# Crear enlaces simbólicos absolutos
# ==================================
# - Los enlaces simbólicos absolutos contienen la ruta completa del archivo objetivo, lo que permite que sigan funcionando si el enlace se mueve.
# - Sintaxis: `ln -s /path/to/original target_link`

# Ejemplo: Crear un enlace simbólico absoluto.
ln -s /home/carol/Documents/original.txt softlink_abs
ls -lh softlink_abs  # Verificar el enlace simbólico absoluto

# Eliminar enlaces simbólicos
# ===========================
# Los enlaces simbólicos pueden ser eliminados sin afectar el archivo original.

# Ejemplo: Eliminar un enlace simbólico
rm ../softlink
ls -lh ../  # Verificar que el enlace simbólico fue eliminado

# Ejercicios prácticos
# ====================
# 1. Crear un archivo `TestFile.txt` y un enlace simbólico `LinkTest` que apunte a él.
touch TestFile.txt
ln -s TestFile.txt LinkTest
ls -lh LinkTest

# 2. Mover `LinkTest` a `/tmp` y verificar que siga apuntando correctamente.
mv LinkTest /tmp/
ls -lh /tmp/LinkTest

# 3. Cambiar el contenido de `TestFile.txt` y verificar el cambio mediante `LinkTest`.
echo "Este es un archivo enlazado" > TestFile.txt
cat /tmp/LinkTest

# 4. Eliminar el enlace `LinkTest` y verificar que el archivo original no se ve afectado.
rm /tmp/LinkTest
ls -lh TestFile.txt