#!/bin/bash

# Definir la versión deseada de Node.js
NODE_VERSION="v22.13.1"
NODE_DISTRO="node-$NODE_VERSION-linux-x64"
NODE_URL="https://nodejs.org/dist/$NODE_VERSION/$NODE_DISTRO.tar.xz"

# Descargar Node.js desde el repositorio oficial
echo "Descargando Node.js $NODE_VERSION..."
wget $NODE_URL

# Verificar si la descarga fue exitosa
if [ -f "$NODE_DISTRO.tar.xz" ]; then
    echo "Descarga completada. Descomprimiendo el archivo..."
    # Descompresión del archivo
    tar -xvf "$NODE_DISTRO.tar.xz"

    echo "Instalando Node.js en /usr/local/node..."
    # Mover los archivos al directorio de instalación
    sudo mv "$NODE_DISTRO" /usr/local/node/

    # Agregar Node.js al PATH del sistema
    echo "Agregando Node.js al PATH del sistema..."
    if [ -f ~/.zshrc ]; then
        echo "export PATH=/usr/local/node/bin:\$PATH" >> ~/.zshrc
    fi

    if [ -f ~/.bashrc ]; then
        echo "export PATH=/usr/local/node/bin:\$PATH" >> ~/.bashrc
    fi

    # Informar al usuario
    echo "Node.js $NODE_VERSION instalado correctamente. Recarga tu terminal o ejecuta 'source ~/.bashrc' o 'source ~/.zshrc'."
else
    echo "Error: Archivo $NODE_DISTRO.tar.xz no encontrado. La descarga pudo haber fallado."
    exit 1
fi
