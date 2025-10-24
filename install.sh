#Install minimal gnome
sudo apt install -y gnome-session gnome-console network-manager-gnome network-manager-openvpn-gnome gnome-disk-utility nautilus gnome-shell-pomodoro vlc ibus-unikey timeshift curl gh firewalld adb fastboot unrar flatpak intel-media-va-driver-non-free libavcodec-extra gstreamer1.0-vaapi
#Install Brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources https://brave-browser-apt-release.s3.brave.com/brave-browser.sources
sudo apt update
sudo apt install -y brave-browser
#Add flathub repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
#hidpi gnome login screen
sudo tee /usr/share/glib-2.0/schemas/99_hidpi.gschema.override << EOF
[org.gnome.desktop.interface]
text-scaling-factor=1.2
EOF
#Compile the schemas
sudo glib-compile-schemas /usr/share/glib-2.0/schemas
#Install fnm
curl -fsSL https://fnm.vercel.app/install | bash
