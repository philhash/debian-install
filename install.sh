#Install minimal gnome
sudo apt install -y gnome-session gnome-console network-manager-gnome network-manager-openvpn-gnome gnome-disk-utility nautilus firefox-esr gnome-shell-pomodoro vlc ibus-unikey timeshift curl gh firewalld adb fastboot unrar flatpak intel-media-va-driver-non-free libavcodec-extra gstreamer1.0-vaapi
#Add flathub repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
#Install fnm
curl -fsSL https://fnm.vercel.app/install | bash
