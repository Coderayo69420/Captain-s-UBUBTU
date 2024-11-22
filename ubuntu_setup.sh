#!/bin/bash

# Set colors for banner
C='\033[0;31m'   # Red
Y='\033[0;33m'   # Yellow
W='\033[0m'      # White

# Banner function
banner() {
    printf "${C}__        __  ___             .  __  \n"
    printf "/  \`  /\  |__)  |   /\  | |\ | ' /__\` \n"
    printf "\\__, /~~\\ |     |  /~~\\ | | \\|   .__/ \n"
    printf "                               \n"
    printf "${W}Ubuntu Setup Script\n"
}

# Function to setup PulseAudio
setup_pulseaudio() {
    echo "Setting up PulseAudio..."
    apt install -y pulseaudio
    pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
    echo "PulseAudio setup complete!"
}

# Function to set VNC password
setup_vnc_password() {
    banner
    echo "Please enter a password for VNC:"
    read -s vnc_passwd
    echo "Verify the password:"
    read -s vnc_passwd_verify

    if [ "$vnc_passwd" != "$vnc_passwd_verify" ]; then
        echo "Passwords do not match. Please try again."
        return 1
    fi

    echo "$vnc_passwd" | vncpasswd -f
    echo "VNC password set successfully!"
}

# Function to install packages
install_packages() {
    echo "Installing necessary packages..."
    apt update && apt upgrade -y
    apt install -y \
        code \
        gimp \
        firefox \
        chromium-browser \
        libglib2.0-0 \
        libx11-xcb1 \
        intellij-idea-community \
        libreoffice \
        python3 \
        python3-tk \
        xorg \
        tightvncserver \
        vlc \
        audacity \
        lightdm \
        lxappearance \
        git \
        curl \
        glances \
        neofetch \
        htop \
        thunar \
        zip \
        unzip \
        tar
    echo "Packages installed successfully!"
}

# Function to setup and start VNC server
start_vnc_server() {
    vncserver
    echo "VNC server started!"
}

# Function to start X11
start_x11() {
    export DISPLAY=:0
    startx
    echo "X11 started!"
}

# Function to create a root@localhost prompt
setup_root_prompt() {
    sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' ~/.bashrc
    echo "export PS1='\[\033[01;31m\]root@localhost\[\033[00m\]:\w\$ '" >> ~/.bashrc
    source ~/.bashrc
    echo "Root prompt set successfully!"
}

# Main script execution
install_packages
setup_pulseaudio
setup_vnc_password
setup_root_prompt

echo "Ubuntu setup completed!"
echo "You can now use the following commands:"
echo " - 'ubuntu' to start the environment"
echo " - 'vncserver' to start the VNC server"
echo " - 'startx' to start X11"
echo "Enjoy your Ubuntu setup!"
