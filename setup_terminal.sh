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

# Function to create hacker_startup.sh script
create_startup_script() {
    local startup_script=~/hacker_startup.sh

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

    # Play the welcome voice MP3 file if it exists
    if [ -f ~/welcomevoice.mp3 ]; then
        termux-media-player play ~/welcomevoice.mp3 &> /dev/null
    else
        echo "Welcome voice file (welcomevoice.mp3) not found."
    fi

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

# Execute the display_hacker_message function
display_hacker_message "\$name"
EOL

    chmod +x $startup_script

    echo "Setup complete! The startup script is located at $startup_script."
}

# Main setup process
echo "Setting up hacker-themed Termux environment..."

# Install necessary packages
install_dependencies

# Create the startup script
create_startup_script