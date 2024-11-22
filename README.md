# CAPTAIN'S UBUNTU 
**Sailent Features**
- Fixed audio output
- Lightweight XFCE Desktop Environment
- Only 3.5-4 GB
- Both VNC Viewer and Termux: X11 supported
  *VIDEO TUTORIAL COMING SOON*
  Comes installed with following **
  - VS CODE
  - MOUSEPAD
  - Thunar File Managar
  - Libre Office
  - XFCE Terminal
  - Firefox/Chromium
  - Intellij Idea Community edition
  - VLC
  - Audacity

*Function to choose which applications to install coming soon*

Comes installed with following packages
- lightdm
- lxappearance
- git
- curl
- glances
- neofetch
- htophtop

# Ubuntu Setup for Termux

This repository contains a script to set up a modified Ubuntu environment in Termux. The script installs necessary packages, configures VNC, sets up PulseAudio for sound, and customizes the Ubuntu terminal prompt.

## Prerequisites

Before running the script, make sure you have **Termux** installed on your device. You can download it from [F-Droid](https://f-droid.org/packages/com.termux/).

Additionally, this setup requires:
- A **VNC viewer** app (e.g., VNC Viewer or any VNC client) [RVNC VIEWER](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android) recommended.
- [**Termux: X11**](https://github.com/termux/termux-x11/releases/tag/nightly) if you are using it instead. It is recommended as it performs better than vnc apps told by most users.
  
*Installing Termux from Play store is not recommended as it is no longer maintained*

## Setup Instructions

### 1. Install Termux
If you haven't installed Termux already, install it from [F-Droid](https://f-droid.org/packages/com.termux/).

### 2. Install Git
If you don't have `git` installed in Termux, run the following command to install it:
```bash
pkg update && pkg upgrade -y
pkg install git -y
```
# Clone the Repository
Clone this repository to your Termux environment using git:
```
git clone https://github.com/Coderayo69420/Captain-s-UBUBTU
cd Captain-s-UBUNTU
```
# Make the Bash Script Executable
Run:
```
chmod +x ubuntu_setup.sh
```
# Run the Script 
```
./ubuntu_setup.sh
```
* Note this might take 20-30 minutes and about 4 GB data*
This will automatically:

Install necessary packages like VNC, PulseAudio, and other apps.
Set up the ~/.bashrc and ~/.vnc/xstartup files.
Ask you to create a VNC password.

# Set Up VNC Server and Start Ubuntu
After the script finishes running, you can use the following commands to start the Ubuntu environment in Termux:

*Closing the current session and opening a new one is recommended*

Open Ubuntu Desktop Environment 
```
ubuntu
```
**Start the VNC server:**
```
vncserver
```
*This will prompt you to enter the VNC password you set earlier.*

# Using Termux: X11
**If you want to use Termux: X11 and not installed already then download from [here](https://github.com/termux/termux-x11/releases/tag/nightly)
# Start the X11 session
```
startx
```
Now you should be able to connect to the VNC server using a VNC viewer app or Termux X11and access your Ubuntu desktop environment!

# Commands to use
Start VNC server: vncserver
Start X11 session: startx
Stop the VNC server: vncserver -kill :1 (Replace :1 with the display number if different)

# Optional - Modify .bashrc for Custom Prompt
The script sets a custom prompt (root@localhost), but you can modify it further in the ~/.bashrc file if desired.

*Feel free to explore the repository for more updates and customizations.*
