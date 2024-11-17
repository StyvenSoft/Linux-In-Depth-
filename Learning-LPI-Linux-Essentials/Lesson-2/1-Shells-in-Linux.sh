#!/bin/bash

echo "########################################"
echo "#     Diferentes Shells en Linux       #"
echo "########################################"

# =========================
# Shells en Linux:
# =========================
# Un "shell" es una interfaz que permite a los usuarios interactuar con el sistema operativo.
# Hay varios tipos de shells disponibles en Linux, los más comunes son:

# 1. Bash (Bourne Again Shell): Es el shell predeterminado en la mayoría de distribuciones como Ubuntu y Debian.
# 2. Zsh (Z Shell): Es similar a Bash pero ofrece más características, como un mejor autocompletado y temas.
# 3. Fish (Friendly Interactive Shell): Es un shell moderno, con un enfoque en la facilidad de uso.
# 4. Dash (Debian Almquist Shell): Es más ligero y más rápido que Bash, pero con menos características.

# =========================
# Ejemplos de Instalación:
# =========================
# Para instalar diferentes shells en Debian/Ubuntu, utiliza los siguientes comandos:

# Instalar Bash (ya suele estar instalado por defecto):
sudo apt install bash

# Instalar Zsh:
sudo apt install zsh

# Instalar Fish:
sudo apt install fish

# Instalar Dash:
sudo apt install dash

# =========================
# Cambiar de Shell:
# =========================
# Después de instalar un nuevo shell, puedes cambiar tu shell por defecto con el comando `chsh`:

# Cambiar a Zsh como shell por defecto:
# chsh -s /bin/zsh
echo "chsh -s /bin/zsh"

# Cambiar a Fish como shell por defecto:
# chsh -s /usr/bin/fish
echo "chsh -s /usr/bin/fish"

# =========================
# Tipos de Indicadores (Prompts):
# =========================
# El prompt o indicador es lo que ves antes de cada comando en la terminal. En la mayoría de distribuciones,
# sigue la siguiente estructura:
# username@hostname current_directory shell_type

# Ejemplo de un prompt típico en Ubuntu/Debian para un usuario normal:
# hugo_echeverri@mycomputer:~$

# Este indicador tiene la siguiente estructura:
# username     -> Nombre de usuario (hugo_echeverri)
# hostname     -> Nombre de la máquina (mycomputer)
# current_directory -> Directorio actual (~ significa el directorio "home" del usuario)
# shell_type   -> El tipo de shell que estás usando (normalmente se especifica después del prompt en algunos casos).

# =========================
# Modificar el Prompt:
# =========================
# En Bash, puedes modificar el prompt usando la variable PS1.
# Ejemplo de personalización del prompt en Bash:
# PS1='\u@\h:\w\$ '

# En esta configuración:
# \u -> Nombre de usuario
# \h -> Nombre del host
# \w -> Directorio actual
# \$ -> Indicador de si eres un usuario normal ($) o root (#)

# Para aplicar este cambio solo en tu sesión actual:
echo "export PS1='\u@\h:\w\$ '"

# Si quieres hacerlo permanente, añade la línea a tu archivo ~/.bashrc.