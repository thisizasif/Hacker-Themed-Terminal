#!/bin/bash

# Function to display a hacker-style welcome message
display_hacker_message() {
    echo -e "\e[32m"
    echo "####################################"
    echo "#                                  #"
    echo "#       Welcome, $1!               #"
    echo "#                                  #"
    echo "####################################"
    echo -e "\e[0m"

    # Voice announcement
    espeak "Welcome $1. Terminal is ready."

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

# Create the startup script
startup_script=~/hacker_startup.sh
echo "#!/bin/bash" > $startup_script
echo "clear" >> $startup_script
echo "display_hacker_message '$name'" >> $startup_script
chmod +x $startup_script

# Add function to .bashrc if it doesn't already exist
if ! grep -q "function display_hacker_message()" ~/.bashrc; then
    echo "function display_hacker_message() {" >> ~/.bashrc
    echo "    echo -e \"\\e[32m\"" >> ~/.bashrc
    echo "    echo \"####################################\"" >> ~/.bashrc
    echo "    echo \"#                                  #\"" >> ~/.bashrc
    echo "    echo \"#       Welcome, \$1!               #\"" >> ~/.bashrc
    echo "    echo \"#                                  #\"" >> ~/.bashrc
    echo "    echo \"####################################\"" >> ~/.bashrc
    echo "    echo -e \"\\e[0m\"" >> ~/.bashrc
    echo "    espeak \"Welcome \$1. Terminal is ready.\"" >> ~/.bashrc
    echo "    echo -e \"\\e[33m\"" >> ~/.bashrc
    echo "    echo \"Initializing system...\"" >> ~/.bashrc
    echo "    sleep 1" >> ~/.bashrc
    echo "    echo \"Loading modules...\"" >> ~/.bashrc
    echo "    sleep 1" >> ~/.bashrc
    echo "    echo \"Connecting to the network...\"" >> ~/.bashrc
    echo "    sleep 1" >> ~/.bashrc
    echo "    echo \"Ready.\"" >> ~/.bashrc
    echo "    echo -e \"\\e[0m\"" >> ~/.bashrc
    echo "}" >> ~/.bashrc
fi

# Add the startup script to .bashrc if it doesn't already exist
if ! grep -q "~/hacker_startup.sh" ~/.bashrc; then
    echo "~/hacker_startup.sh" >> ~/.bashrc
fi

# Inform the user
echo "Setup complete! Please restart your terminal to see the changes."