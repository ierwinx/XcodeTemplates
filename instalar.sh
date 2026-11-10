#!/bin/bash
# Instala los templates dentro de Xcode.app (reemplaza la versión anterior). Requiere sudo.
set -e
SRC="$(cd "$(dirname "$0")" && pwd)"
sudo rm -rf "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File Templates/iOS/Custom Architectures"
sudo mkdir -p "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File Templates/iOS/Custom Architectures"
for t in "$SRC"/*.xctemplate; do
  sudo ditto "$t" "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File Templates/iOS/Custom Architectures/$(basename "$t")"
  echo "Instalado: $(basename "$t")"
done
echo "Listo. Cierra Xcode con Cmd+Q y ábrelo de nuevo."
