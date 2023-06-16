#!/bin/sh

su -c '
# SCRIPT VOCABULARY
pre_peak_minecraft_forge_server_jar="https://maven.minecraftforge.net/net/minecraftforge/forge/1.7.10-10.13.4.1614-1.7.10/forge-1.7.10-10.13.4.1614-1.7.10-installer.jar"
peak_minecraft_forge_server_jar="https://maven.minecraftforge.net/net/minecraftforge/forge/1.12.2-14.23.5.2860/forge-1.12.2-14.23.5.2860-installer.jar"
newest_minecraft_server_jar="https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar"
eula_auto_agree="https://github.com/MichaelSebero/Linux-Minecraft-Server/raw/main/files/eula.txt"
telemetry_remover="https://github.com/MichaelSebero/Linux-Minecraft-Server/raw/main/files/server.properties"

# INSTALLATION
pacman -S haguichi --noconfirm --needed && mkdir /home/$USER/Minecraft_Server && cd /home/$USER/Minecraft_Server

echo "1. Minecraft Forge 1.7.10"
echo "2. Minecraft Forge 1.12"
echo "3. Minecraft Vanilla Latest"
read -p "Enter your choice (1, 2 or 3): " choice

if [ "$choice" = "1" ]; then
    pacman -S jdk8-openjdk --noconfirm --needed && curl -LO "$pre_peak_minecraft_forge_server_jar" && curl -LO "$eula_auto_agree" && curl -LO "$telemetry_remover" && java -jar forge-1.7.10-10.13.4.1614-1.7.10-installer.jar --installServer && mv forge-1.7.10-10.13.4.1614-1.7.10-universal.jar forge.jar && rm forge-1.7.10-10.13.4.1614-1.7.10-installer.jar && mkdir mods && mkdir config
elif [ "$choice" = "2" ]; then
    pacman -S jdk8-openjdk --noconfirm --needed && curl -LO "$peak_minecraft_forge_server_jar" && curl -LO "$eula_auto_agree" && curl -LO "$telemetry_remover" && java -jar forge-1.12.2-14.23.5.2860-installer.jar --installServer && mv forge-1.12.2-14.23.5.2860.jar forge.jar && rm forge-1.12.2-14.23.5.2860-installer.jar && mkdir mods && mkdir config
elif [ "$choice" = "3" ]; then
    pacman -S jdk17-openjdk --noconfirm --needed && curl -LO "$newest_minecraft_server_jar" && curl -LO "$eula_auto_agree" && curl -LO "$telemetry_remover"
fi

chmod 777 /home/$USER/Minecraft_Server -R && reboot'
