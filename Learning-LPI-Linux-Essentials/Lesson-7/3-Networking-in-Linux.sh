#!/bin/bash
# Redes en Linux: Explorando la configuración de redes de capa de enlace e IPv4

# Redes de capa de enlace (enlace físico)
# Para visualizar las interfaces de red y su estado, se puede usar:
ip link show
# Este comando muestra todas las interfaces de red, sus estados (UP/DOWN), y detalles como la dirección MAC.

# Otro comando útil para ver tanto las interfaces de red como las direcciones IP asociadas es:
ip a
# Muestra detalles de las interfaces de red y las direcciones IP configuradas en cada una.

echo "=== Redes IPv4 ==="
# Las direcciones IPv4 son de 32 bits y permiten la comunicación en redes.
# La configuración de red puede incluir la dirección IP, máscara de subred y puerta de enlace.

# Subredes IPv4
# Una subred IPv4 segmenta una red en múltiples redes más pequeñas.
# Ejemplo: 192.168.0.0/24 significa que la red tiene 256 direcciones (192.168.0.0 - 192.168.0.255).

# Direcciones IPv4 privadas
# En IPv4 existen rangos reservados para redes privadas:
# - Clase A: 10.0.0.0 - 10.255.255.255
# - Clase B: 172.16.0.0 - 172.31.255.255
# - Clase C: 192.168.0.0 - 192.168.255.255

echo "=== Configuración de dirección IPv4 ==="
# Para configurar una dirección IP manualmente, se puede usar el comando 'ip addr add':
# Ejemplo: Agregar la dirección IP 192.168.0.5 con máscara de 255.255.255.0 a la interfaz 'ens33'
sudo ip addr add 192.168.0.5/24 dev ens33
# El comando anterior asigna la IP 192.168.0.5 a la interfaz de red 'ens33'.
# Se requiere permisos de superusuario (sudo) para ejecutar esta operación.

# Para verificar la dirección IP configurada en una interfaz específica, utiliza:
ip addr show ens33
# Muestra las direcciones IP y otros detalles de la interfaz 'ens33'.

# Verificación de la conectividad
# Para comprobar la conexión con otra máquina en la red, se puede usar el comando 'ping':
ping -c 3 192.168.0.1
# El comando 'ping -c 3' envía 3 paquetes ICMP a la IP 192.168.0.1 para verificar la conectividad.

# El comando ssh (Secure Shell)

# Se utiliza para establecer una conexión remota segura entre dos computadoras. 
# Esta conexión permite ejecutar comandos, transferir archivos y administrar sistemas de forma segura mediante cifrado.

ssh usuario@host

# Ejemplo básico:
ssh user@192.168.1.100

# Opciones comunes

# Especificar puerto: Si el servidor SSH no utiliza el puerto predeterminado (22):
ssh -p 2222 user@host

# Copiar un archivo al servidor remoto: Usando scp (comando basado en SSH):

scp archivo.txt usuario@host:/ruta/destino/

echo "=== Ejercicios Prácticos ==="
# 1. Ejecuta 'ip link show' y analiza las interfaces de red disponibles.
# 2. Usa 'ip addr show' para ver las direcciones IP de todas las interfaces.
# 3. Configura una IP en tu interfaz de red: 'sudo ip addr add 192.168.1.10/24 dev ens33'.
# 4. Verifica que la IP se haya configurado con 'ip addr show ens33'.
# 5. Prueba la conectividad haciendo ping a otra máquina en la red: 'ping -c 4 192.168.1.1'.
# 6. Intenta remover una dirección IP: 'sudo ip addr del 192.168.1.10/24 dev ens33'.