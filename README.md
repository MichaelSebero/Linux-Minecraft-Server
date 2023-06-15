## Requirements
. Arch-based system

. AUR repo

## How to Install
```
curl -LO https://raw.githubusercontent.com/MichaelSebero/Linux-Minecraft-Server/main/install.sh

sh install.sh
```
. The system will reboot after the installation is over.

## How to Use
. Run Haguichi.
```
sudo haguichi
```
. Create a network & copy the network's IPv4 address.

. Input the IPv4 address into `server.properties` under `server-ip=`

. Start the server from the commands below.

### Forge
```
cd /home/$USER/Minecraft_Server && java -Xmx4G -Xmx8G -jar forge.jar nogui
```

### Vanilla

```
cd /home/$USER/Minecraft_Server && java -Xmx4G -Xmx8G -jar server.jar nogui
```

## Important
. Depending on your system you might need to disable your firewall if you plan on using Haguichi, it uses a LAN connection which some firewalls block.

. You'll have to invite your friends to your Haguichi network "it's called Hamachi on Windows" and provide them with the network's IPv4 address to connect with the server.

. Your IPv4 address will look something like this `25.49.96.2` or `25.49.89.92`.

. If you have multiple versions of Java installed you'll need to remove one of them to get the server running correctly. `jdk8-openjdk` is used for 1.12 and `jdk17-openjdk` is used for modern versions.

. Each Forge version requires the latest version.
