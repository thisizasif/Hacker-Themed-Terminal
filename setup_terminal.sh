#!/bin/bash

# Function to install necessary packages
install_dependencies() {
    # Check if termux-api is installed
    if ! command -v termux-media-player &> /dev/null; then
        echo "termux-api not found. Installing..."
        pkg update
        pkg install termux-api -y
    fi
}

# Function to display a hacker-style welcome message
display_hacker_message() {
    echo -e "\e[32m"
    echo "####################################"
    echo "#                                  #"
    echo -e "#       Welcome, \e[31m$1\e[32m!           #"
    echo "#                                  #"
    echo "####################################"
    echo -e "\e[0m"

    # Play the welcome voice MP3 file
    termux-media-player play ~/welcomevoice.mp3 &> /dev/null

    # Simulate hacker-style output
    echo -e "\e[33m"
    echo "Initializing system..."
    sleep 1
    echo "Loading modules..."
    sleep 1
    echo "Connecting to the network..."
    sleep 1
    echo "Ready."
    echo -e "\e[0m"
}

# Ask the user for their name
echo "Enter your name:"
read name

# Install necessary packages
install_dependencies

# Create the startup script
startup_script=~/hacker_startup.sh
cat <<EOL > $startup_script
#!/bin/bash

# Function to display a hacker-style welcome message
display_hacker_message() {
    echo -e "\e[32m"
    echo "####################################"
    echo "#                                  #"
    echo -e "#       Welcome, \e[31m\$1\e[32m!           #"
    echo "#                                  #"
    echo "####################################"
    echo -e "\e[0m"

    # Play the welcome voice MP3 file
    termux-media-player play ~/welcomevoice.mp3 &> /dev/null

    # Simulate hacker-style output
    echo -e "\e[33m"
    echo "Initializing system..."
    sleep 1
    echo "Loading modules..."
    sleep 1
    echo "Connecting to the network..."
    sleep 1
    echo "Ready."
    echo -e "\e[0m"
}

clear
display_hacker_message "$name"
EOL

chmod +x $startup_script

# Add the startup script to .bashrc if it doesn't already exist
if ! grep -q "~/hacker_startup.sh" ~/.bashrc; then
    echo "~/hacker_startup.sh" >> ~/.bashrc
fi

# Source the .bashrc to make changes take effect immediately
source ~/.bashrc

# Run the startup script to show changes immediately
bash ~/hacker_startup.sh

# Inform the user
echo "Setup complete! Your terminal has been updated."