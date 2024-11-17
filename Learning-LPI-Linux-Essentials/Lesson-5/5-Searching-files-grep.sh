#!/bin/bash

# ==========================================
#          Búsquedas en archivos con grep
# ==========================================

# `grep` es una herramienta muy poderosa para buscar patrones de texto dentro de archivos. 
# Soporta expresiones regulares y muchas opciones que permiten ajustar las búsquedas según las necesidades.

# ==========================================
#   Búsqueda básica con grep
# ==========================================

# El comando `grep` toma dos argumentos principales: 
# 1. El patrón a buscar.
# 2. El archivo o los archivos donde buscar.

# Ejercicio práctico:

# 1. Buscar todas las ocurrencias de la palabra "bash" en el archivo `/etc/passwd`:
grep bash /etc/passwd

# ==========================================
#   Opciones de grep
# ==========================================

# `grep` tiene varias opciones útiles que permiten modificar su comportamiento:

# - `-i`: Ignorar mayúsculas y minúsculas.
# - `-r`: Buscar de manera recursiva en directorios.
# - `-c`: Mostrar solo el conteo de coincidencias en lugar de las líneas coincidentes.
# - `-v`: Invertir la coincidencia, mostrando las líneas que no coinciden con el patrón.
# - `-e`: Definir el patrón a buscar explícitamente (útil cuando hay varios patrones).

# Ejercicio práctico:

# 1. Buscar "bash" sin distinguir entre mayúsculas y minúsculas:
grep -i bash /etc/passwd

# 2. Buscar "bash" en todos los archivos de un directorio y sus subdirectorios:
grep -r bash /etc

# 3. Contar cuántas veces aparece "bash" en el archivo `/etc/passwd`:
grep -c bash /etc/passwd

# 4. Mostrar todas las líneas que **no** contienen "bash":
grep -v bash /etc/passwd

# 5. Buscar el patrón "bash" usando la opción `-e`:
grep -e "bash" /etc/passwd

# ==========================================
#   Expresiones regulares con grep
# ==========================================

# Las expresiones regulares son patrones avanzados que puedes usar con `grep` para realizar búsquedas más flexibles.

# - `.`: Coincide con cualquier carácter.
# - `[abc]`: Coincide con cualquier carácter dentro del conjunto (a, b o c).
# - `[^abc]`: Coincide con cualquier carácter que **no** esté en el conjunto.
# - `[a-z]`: Coincide con cualquier carácter en el rango de a a z.
# - `[^a-z]`: Coincide con cualquier carácter que **no** esté en el rango de a a z.
# - `sun|moon`: Coincide con "sun" o "moon".
# - `^`: Coincide con el inicio de la línea.
# - `$`: Coincide con el final de la línea.
# - `*`, `+`, `?`: Operadores de repetición.

# Ejercicio práctico:

# 1. Buscar todas las líneas que contienen el carácter "a" seguido de "b" en el archivo `text.txt`:
grep "ab" text.txt

# 2. Buscar todas las líneas que contienen una "a" o una "b":
grep "[ab]" text.txt

# 3. Buscar todas las líneas que comienzan con la letra "a":
grep "^a" text.txt

# 4. Buscar todas las líneas que terminan con el número "2":
grep "2$" text.txt

# 5. Usar el operador `.` para buscar todas las líneas donde "ab" es seguido por cualquier cosa (una o más veces):
grep -E "ab.+" text.txt

# ==========================================
#   Más ejemplos de expresiones regulares
# ==========================================

# Ejercicio práctico:

# 1. Buscar cualquier línea que contenga un carácter entre "A" y "C":
grep "[A-C]" text.txt

# 2. Buscar cualquier línea que **no** comience con una letra minúscula:
grep "^[^a-z]" text.txt

# 3. Buscar las líneas que contengan "sun" o "moon":
grep "sun|moon" text.txt

# 4. Buscar las líneas donde "abc" aparece seguido de uno o más caracteres:
grep -E "abc.+" text.txt

# ==========================================
#       Ejercicios adicionales
# ==========================================

# 1. Buscar líneas que comiencen con cualquier número en `text.txt`:
grep "^[0-9]" text.txt

# 2. Buscar líneas que terminen con un punto "." en `text.txt`:
grep "\.$" text.txt

# 3. Buscar líneas que contengan cualquier número entre 1 y 5:
grep "[1-5]" text.txt

# 4. Buscar líneas que **no** contengan dígitos:
grep "[^0-9]" text.txt

# 5. Buscar en todos los archivos de un directorio líneas que empiecen con una vocal:
grep -r "^[aeiou]" /path/to/directory

# Las búsquedas con `grep` son muy potentes cuando se combinan con expresiones regulares, permitiéndote buscar patrones complejos y específicos dentro de archivos de texto en tu sistema.
