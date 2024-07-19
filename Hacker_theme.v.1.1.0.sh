#!/bin/bash

# Backup existing .bashrc
cp ~/.bashrc ~/.bashrc.bak

# Clear existing content of .bashrc and add custom hacker theme
cat << 'EOF' > ~/.bashrc

# Disable the default Termux welcome message
export TERMUX_PKG_DISABLE_GAMES=1

# Custom hacker-themed prompt
PS1="\[\e[32m\]Hacker-Ashu\[\e[m\] \[\e[36m\]\w\[\e[m\] > "

# Function to display the banner and welcome message
function display_banner() {
    clear
    echo -e "\e[32m"
    echo "  _    _               _____   _  __  ______   _____  "
    echo " | |  | |     /\      / ____| | |/ / |  ____| |  __ \ "
    echo " | |__| |    /  \    | |      | ' /  | |__    | |__) |"
    echo " |  __  |   / /\ \   | |      |  <   |  __|   |  _  / "
    echo " | |  | |  / ____ \  | |____  | . \  | |____  | | \ \ "
    echo " |_|  |_| /_/    \_\  \_____| |_|\_\ |______| |_|  \_\\"
    echo "                                                      "
    echo "                                                      "
    echo -e "\e[m"
    echo -e "\e[32mWelcome, Hacker-Ashu! Ready to conquer the digital world?\e[m"
    echo ""
}

# Display the banner and welcome message on startup
display_banner

# Aliases to enhance terminal experience
alias ll='ls -la --color=auto'
alias la='ls -A --color=auto'
alias l='ls --color=auto'

# Redefine clear command to display the banner and welcome message
alias cls='clear && display_banner'
alias clear='cls'

# Functions for a hacker vibe
function hacktools() {
    echo -e "\e[32m[+] Available hacking tools:\e[0m"
    echo -e "\e[32m[+] nmap\e[0m - Network exploration tool and security scanner"
    echo -e "\e[32m[+] hydra\e[0m - Password cracking tool"
    echo -e "\e[32m[+] metasploit\e[0m - Penetration testing framework"
}

EOF

# Source the .bashrc to apply changes
source ~/.bashrc

echo "Hacker-themed terminal applied. Please restart Termux or run 'source ~/.bashrc' to see the changes."