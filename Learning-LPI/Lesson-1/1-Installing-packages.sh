#!/bin/bash

# Este script explica cómo instalar paquetes en diferentes distribuciones Linux.

echo "########################################"
echo "#  Instalación de Paquetes en Linux    #"
echo "########################################"

# Explicación de sistemas basados en Debian
# Debian, Ubuntu y Linux Mint utilizan herramientas como dpkg, apt-get y apt para manejar paquetes DEB.
echo ""
echo "========================="
echo "Distribuciones Debian, Ubuntu y Linux Mint:"
echo "========================="

# versión de Debian
lsb_release -a

# Actualizar el índice de paquetes
# Este comando es importante antes de instalar cualquier paquete.
sudo apt update

# Instalar el paquete figlet con apt
# apt es el gestor de paquetes preferido para distribuciones basadas en Debian.
sudo apt install figlet

# Instalar paquetes descargados manualmente con dpkg
# Si tienes un archivo .deb, puedes instalarlo con dpkg.
# Esto es útil si descargas un paquete de un sitio web en lugar de los repositorios.
echo ""
echo "Instalación con dpkg (requiere archivo .deb descargado):"
echo "sudo dpkg -i nombre_del_paquete.deb"

# Corregir dependencias no satisfechas tras usar dpkg
# Si al instalar un .deb hay dependencias faltantes, puedes corregirlas con apt.
sudo apt --fix-broken install

# Búsqueda de paquetes en el caché local de apt
# apt-cache permite buscar paquetes sin tener que acceder a internet.
echo ""
echo "Buscar paquetes usando apt-cache:"
sudo apt-cache search figlet

# Explicación de sistemas basados en Red Hat
# Red Hat, Fedora y CentOS utilizan rpm, yum y dnf para gestionar paquetes RPM.
echo ""
echo "========================="
echo "Distribuciones Red Hat, Fedora y CentOS:"
echo "========================="

# Instalar paquetes con dnf en Fedora, CentOS 8+
# dnf es el sucesor de yum, utilizado en distribuciones modernas de Red Hat.
sudo dnf install figlet

# Instalar paquetes con yum en Red Hat y CentOS 7
# yum sigue siendo utilizado en versiones más antiguas, como CentOS 7.
sudo yum install figlet

# Instalar paquetes RPM descargados con rpm
# Similar a dpkg en Debian, rpm gestiona paquetes .rpm en Red Hat.
echo ""
echo "Instalación con rpm (requiere archivo .rpm descargado):"
echo "sudo rpm -i nombre_del_paquete.rpm"

# Buscar paquetes en Fedora/CentOS
# Puedes buscar paquetes disponibles en los repositorios con dnf o yum.
echo ""
echo "Buscar paquetes usando dnf/yum:"
sudo dnf search figlet   # En Fedora/CentOS con dnf
sudo yum search figlet   # En Red Hat/CentOS 7

# Manejo del caché en sistemas Debian/Ubuntu
# apt-cache maneja el caché local, permitiendo búsquedas y visualización de información.
echo ""
echo "========================="
echo "Manejo del Caché de Paquetes en Debian/Ubuntu:"
echo "========================="

# Buscar un paquete en el caché
# apt-cache search permite buscar en la caché sin necesidad de conectarse a internet.
echo "Buscar información de figlet en la caché:"
sudo apt-cache search figlet

# Mostrar detalles de un paquete
# apt-cache show muestra información detallada de un paquete disponible.
echo "Ver detalles del paquete figlet:"
sudo apt-cache show figlet

# Limpiar el caché de apt
# apt-get clean elimina los paquetes descargados, liberando espacio.
# apt-get autoclean elimina archivos temporales obsoletos.
echo ""
echo "Limpieza del caché de paquetes:"
sudo apt-get clean
sudo apt-get autoclean
