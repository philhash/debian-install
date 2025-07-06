#Install XFCE
sudo apt install -y gnome-session gnome-terminal gnome-system-monitor network-manager-gnome network-manager-openvpn-gnome gnome-disk-utility nautilus menulibre ibus-unikey timeshift curl gh firewalld adb fastboot unrar flatpak intel-media-va-driver-non-free libavcodec-extra gstreamer1.0-vaapi
#Add flathub repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
#hidpi gnome login screen
sudo tee /usr/share/glib-2.0/schemas/99_hidpi.gschema.override << EOF
[org.gnome.desktop.interface]
text-scaling-factor=1.5
cursor-size=32
scaling-factor=1
EOF
#Compile the schemas
sudo glib-compile-schemas /usr/share/glib-2.0/schemas
##Change Grub resolution
sudo sed -i 's/#GRUB_GFXMODE=640x480/GRUB_GFXMODE=800x600/g' /etc/default/grub
sudo update-grub
#Add vscodium gpg key
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
#Add the repository
echo 'deb [arch=amd64,arm64 signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
#Install vscodium
sudo apt update && sudo apt install codium
#Install fnm
curl -fsSL https://fnm.vercel.app/install | bash
#Install Brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources https://brave-browser-apt-release.s3.brave.com/brave-browser.sources
sudo apt update
sudo apt install brave-browser
