
#!/bin/bash

# Verifica se lo script di installazione di Sophos è presente
if [ ! -f "sav-linux-free-9.tgz" ]; then
    echo "Error: Sophos installation package not found."
    exit 1
fi

# Estrai il pacchetto di installazione di Sophos
echo "Extracting Sophos installation package..."
tar -xzf sav-linux-free-9.tgz

# Entra nella directory estratta
cd sophos-av

# Esegui lo script di installazione
echo "Installing Sophos Antivirus..."
sudo ./install.sh

echo "Sophos Antivirus installation completed."

