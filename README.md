
# Hacker-Themed Terminal Setup

This script customizes your terminal to have a hacker-themed look and feel. It changes the prompt, adds a hacker-style welcome message, and includes useful aliases and functions.

## Usage

### 1. Clone the Repository
Clone this repository to your local machine:
```sh
git clone https://github.com/thisizasif/hacker-themed-terminal.git
...

```sh

### optional 
cd hacker-themed-terminal
```


### 2. Customize Your Name
Open the `hacker_theme.sh` file in a text editor:
```sh
nano hacker_theme.sh
```

Find the line:
```sh
PS1="\[\e[32m\]Your Name Here\[\e[m\] \[\e[36m\]\w\[\e[m\] > "
```

Replace `Hacker-Ashu` with your desired name or alias. And save by pressing CTRL +X then press Y 
and finally press enter.

### 3. Make the Script Executable
Make the script executable:
```sh
chmod +x hacker_theme.sh
```

### 4. Run the Script
Execute the script to apply the hacker-themed terminal settings:
```sh
./hacker_theme.sh
```

## Explanation of Script Components

- **Disable Default Termux Welcome Message**: The `export TERMUX_PKG_DISABLE_GAMES=1` line is intended to disable the default Termux welcome message. If this doesn't work, you might need to investigate other methods to suppress the welcome message based on your Termux version.
- **Custom Prompt**: Sets the prompt to your specified name or alias in green and shows the current working directory in cyan, followed by a `> `.
- **ASCII Art Welcome Message**: Displays the provided ASCII art each time a new terminal session is started.
- **Aliases and Functions**: Adds useful aliases for common commands and a `hacktools` function to list hacker tools.

This script will give your Termux terminal a hacker-themed look and feel with the specified ASCII art.

## Notes

- This script is designed for Bash. If you're using a different shell like Zsh, modify the script accordingly.
- Feel free to modify the ASCII art, aliases, and functions to suit your preferences.
```
