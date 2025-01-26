# Instalador de Nodejs En Arch linux

Instalacion:


Actualizamos el sistema 
```bash
sudo pacman -Syyu
```
Instalacion de wget
```bash
sudo pacman -S wget
```
Descargamos los archivos
```bash
git clone https://github.com/LucioHdz/instalador-node-lts-arch.git
```
Ingresamos a la carpeta
```bash
cd instalador-node-lts-arch
```

Activamos los permisos de ejecucion para el archivo de instalacion
```bash
chmod +x install.sh
```
Asegurate de tener internet al ejecutar el archivo.
Puedes realizar un ping para comprobar tu conexión
```bash
ping 8.8.8.8
```
Instalacion de nodejs
```bash
bash install.sh
```
