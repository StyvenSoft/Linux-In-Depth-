#!/bin/bash
# Configuración y manejo de redes: Enrutamiento IPv4, IPv6, DNS y Sockets

echo "=== Enrutamiento IPv4 ==="
# El enrutamiento en IPv4 permite dirigir el tráfico de red a través de diferentes redes.
# Para ver la tabla de enrutamiento actual del sistema, se puede usar:
ip route show
# Muestra todas las rutas configuradas, incluyendo rutas locales y la ruta por defecto.

# Para agregar una ruta predeterminada (gateway), utiliza:
# Ejemplo: Establecer la IP 192.168.0.1 como la puerta de enlace predeterminada
sudo ip route add default via 192.168.0.1
# Este comando añade una ruta por defecto para que todo el tráfico no específico pase por la IP indicada.
# Recuerda que este comando requiere permisos de superusuario (sudo).

# Verifica nuevamente la tabla de enrutamiento para confirmar los cambios:
ip route show

echo "=== Redes IPv6 ==="
# IPv6 es la versión más reciente del protocolo IP, con direcciones de 128 bits.
# Las direcciones IPv6 se presentan en formato hexadecimal y son mucho más largas que las IPv4.

# Ejemplo de dirección IPv6: 2001:0db8:85a3:0000:0000:8a2e:0370:7334

# Para ver las interfaces de red y sus direcciones IPv6 configuradas:
ip -6 addr show
# Muestra las direcciones IPv6 y otros detalles específicos de las interfaces.

echo "=== DNS (Domain Name System) ==="
# DNS traduce nombres de dominio a direcciones IP.
# El archivo /etc/resolv.conf contiene los servidores DNS configurados:
cat /etc/resolv.conf
# Este archivo muestra los servidores DNS que el sistema utiliza para resolver nombres de dominio.

# Puedes hacer una consulta DNS utilizando los comandos 'host' y 'dig':
# Ejemplo: Resolver el nombre de dominio learning.lpi.org
host learning.lpi.org
# 'host' muestra la dirección IP asociada al dominio.

dig learning.lpi.org
# 'dig' proporciona una salida más detallada de la consulta DNS.

# Comprobación de conectividad mediante ping:
ping -c 3 learning.lpi.org
# Enviar 3 paquetes ICMP al dominio para verificar la conectividad.

echo "=== Sockets ==="
# Los sockets permiten la comunicación entre aplicaciones de red.
# Para ver los sockets activos, utiliza:
ss -t
# El comando 'ss -t' muestra las conexiones TCP activas.

echo "=== Ejercicios Prácticos ==="
# 1. Ejecuta 'ip route show' para ver la tabla de enrutamiento actual.
# 2. Configura una puerta de enlace predeterminada con 'sudo ip route add default via 192.168.1.1'.
# 3. Verifica la configuración de DNS con 'cat /etc/resolv.conf'.
# 4. Realiza una consulta DNS usando 'host google.com' y 'dig google.com'.
# 5. Comprueba la conectividad a un dominio con 'ping -c 4 www.example.com'.
# 6. Observa las conexiones TCP activas en tu sistema con 'ss -t'.