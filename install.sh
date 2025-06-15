#Install XFCE
sudo apt install -y xfce4 xfce4-power-manager xfce4-clipman-plugin xfce4-screenshooter xfce4-taskmanager xfce4-terminal blueman slick-greeter \
	mousepad ristretto atril vlc ibus-unikey timeshift curl gh firewalld firefox adb fastboot gnome-disk-utility \
	flatpak intel-media-va-driver-non-free i965-va-driver-shaders libavcodec-extra gstreamer1.0-vaapi \
	network-manager-gnome network-manager-openvpn-gnome xserver-xorg-video-intel- \
#Add flathub repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
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