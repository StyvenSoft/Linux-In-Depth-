#!/bin/bash
# Tema: Manejo de Redes en Linux

# Introducción
# =============
# El manejo de redes es esencial para configurar y diagnosticar la conectividad en sistemas Linux.
# Este script muestra cómo utilizar varias utilidades y comandos relacionados con redes.

# Utilidad `nmcli`
# ================
# `nmcli` es una herramienta de línea de comandos para controlar NetworkManager.

# Ejemplo: Mostrar el estado de todas las conexiones.
nmcli connection show

# Ejercicio:
# Activar una conexión llamada "WIFI_HOME".
# Descomenta la siguiente línea para ejecutar:
# nmcli connection up WIFI_HOME

# Utilidad `nmtui`
# ================
# `nmtui` proporciona una interfaz de usuario para configurar la red.

# Ejemplo:
# Abre el menú de configuración de red.
nmtui  # Usa las flechas para navegar. Pulsa Enter para seleccionar.

# Comando `ip addr show`
# ======================
# Muestra la configuración de red de una interfaz específica.

# Ejemplo: Mostrar la configuración de la interfaz `wlp2s0`.
ip addr show dev wlp2s0

# Ejercicio:
# Muestra la configuración de la interfaz `ens33`.
ip addr show dev ens33

# Comando `ip neigh`
# ==================
# Muestra la tabla ARP, que relaciona direcciones IP con direcciones MAC.

# Ejemplo:
ip neigh

# Ejercicio:
# Limpia la tabla ARP.
ip neigh flush all

# Comando `ss`
# ============
# `ss` muestra sockets activos en el sistema.

# Ejemplo: Mostrar todos los sockets.
ss

# Ejemplo: Mostrar solo conexiones TCP.
ss -t

# Ejercicio:
# Muestra las conexiones TCP activas en el puerto 80.
ss -t "( dport = :80 )"

# Utilidad `telnet`
# =================
# `telnet` establece conexiones TCP a un servidor.

# Ejemplo:
# Conectarse a un servidor en el puerto 80.
# telnet www.google.com 80

# Utilidad `mtr`
# ==============
# `mtr` combina `ping` y `traceroute` para diagnosticar problemas de red.

# Ejemplo: Ver la ruta hacia 8.8.8.8.
mtr -n 8.8.8.8

# Ejercicio:
# Ver la ruta TCP hacia 8.8.8.8 en el puerto 53.
mtr -n --tcp -P 53 8.8.8.8

# Comando `tracepath`
# ===================
# `tracepath` muestra la ruta que toma un paquete hasta un destino.

# Ejemplo:
tracepath -n 8.8.8.8

# Utilidad `nslookup`
# ===================
# `nslookup` consulta servidores DNS para resolver nombres de dominio.

# Ejemplo:
nslookup www.google.com

# Ejercicio:
# Consulta la dirección IP de "example.com".
nslookup example.com

# Utilidad `whois`
# ================
# `whois` consulta la base de datos de registro de dominios.

# Ejemplo:
whois google.com

# Archivo `/etc/resolv.conf`
# ==========================
# Configura los servidores DNS.

# Ejemplo:
nano /etc/resolv.conf  # Editar el archivo de configuración.

# Comando `cat /etc/protocols`
# ============================
# Muestra los protocolos disponibles en el sistema.
cat /etc/protocols

# Comando `less /etc/services`
# ============================
# Muestra los servicios asociados a puertos.

# Ejemplo:
less /etc/services

# Resumen de comandos
# ===================
# - `nmcli`: Controla conexiones de red.
# - `nmtui`: Interfaz de texto para configurar red.
# - `ip addr show`: Muestra configuración de red.
# - `ip neigh`: Tabla ARP.
# - `ss`: Conexiones de red activas.
# - `telnet`: Conexión TCP manual.
# - `mtr`: Diagnóstico de red.
# - `tracepath`: Ruta de paquetes.
# - `nslookup`: Consultas DNS.
# - `whois`: Información de dominio.
# - `cat /etc/protocols`: Lista de protocolos.
# - `less /etc/services`: Lista de servicios y puertos.