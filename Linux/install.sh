#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "To install the program, you need to run the installation script with sudo!"
  exit
fi

mkdir -p /opt/crosstask/crosstask/

echo "[✓] Mkdir successfull"

cp -r ./dist/* /opt/crosstask/crosstask/

echo "[✓] Copyed successfully the important files to opt"

ln -s /opt/crosstask/crosstask/crosstask-unix /usr/local/bin/crosstask

echo ""
echo "[✓] Installation successfully!"
echo "You can run the program with the command: crosstask"
echo "For more help visit the Wiki"