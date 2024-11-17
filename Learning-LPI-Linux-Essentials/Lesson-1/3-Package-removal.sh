#!/bin/bash

echo "########################################"
echo "#      Eliminación de Paquetes en Linux #"
echo "########################################"

# =========================
# Distribuciones Debian, Ubuntu y Linux Mint:
# =========================
# En estos sistemas, para eliminar un paquete se utiliza el comando 'apt' o 'dpkg' 
# para gestionar paquetes DEB.

# Eliminar un paquete con 'apt':
# El comando básico para eliminar un paquete sin borrar archivos de configuración:
echo "sudo apt remove nombre_del_paquete"
sudo apt remove figlet

# Eliminar un paquete y sus archivos de configuración:
# Este comando elimina el paquete junto con sus archivos de configuración:
echo "sudo apt purge nombre_del_paquete"
sudo apt purge figlet

# Eliminar paquetes no necesarios (dependencias no utilizadas):
# Una vez eliminados paquetes, apt puede sugerir dependencias que ya no son necesarias:
sudo apt autoremove

# =========================
# Eliminar un paquete con 'dpkg':
# =========================
# Si has instalado un paquete manualmente usando 'dpkg', puedes eliminarlo con el siguiente comando:
echo "sudo dpkg -r nombre_del_paquete"
sudo dpkg -r figlet

# =========================
# Distribuciones Red Hat, Fedora y CentOS:
# =========================
# En estos sistemas, para eliminar un paquete se utilizan los comandos 'dnf', 'yum', o 'rpm' 
# para gestionar paquetes RPM.

# Eliminar un paquete con 'dnf' (Fedora, CentOS 8+):
echo "sudo dnf remove nombre_del_paquete"
sudo dnf remove figlet

# Eliminar un paquete con 'yum' (Red Hat, CentOS 7):
# sudo yum remove nombre_del_paquete
sudo yum remove figlet

# =========================
# Eliminar un paquete con 'rpm':
# =========================
# Si instalaste un paquete manualmente con 'rpm', puedes eliminarlo con:
# sudo rpm -e nombre_del_paquete
sudo rpm -e figlet

# =========================
# Limpiar el Caché de Paquetes en Debian/Ubuntu:
# =========================
# Después de eliminar paquetes, puedes limpiar la caché de los paquetes descargados 
# para liberar espacio en disco:
sudo apt clean

# Para eliminar archivos de paquetes antiguos que ya no son necesarios:
sudo apt autoclean