#!/bin/bash

# --- Main Selection Menu ---
clear
termux-open-url https://github.com/LK-HACKERS
echo "======================================"
echo "    LK-HACKERS SETUP CONFIGURATOR     "
echo "======================================"
echo "Select your environment:"
echo "[1] Termux"
echo "[2] Kali Linux / Ubuntu"
echo "[3] Exit"
echo -n "Enter your choice [1-3]: "
read choice

case $choice in
    1)
        # --- Termux Configuration ---
        termux-open-url https://lk-hackers.github.io/LK-HACKERS-WebSite/
        
        pkg update && pkg upgrade -y
        pkg install ruby bash -y
        gem install lolcat
        ;;
    2)
        # --- Kali / Ubuntu Configuration ---
        sudo apt update && sudo apt upgrade -y
        sudo apt install ruby bash -y
        sudo gem install lolcat
        ;;
    3)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid option!"
        exit 1
        ;;
esac

# --- Shared Configuration (Banner & PS1) ---

# Create the Menu Script
cat > $HOME/.lk_menu.sh << 'MENU_EOF'
#!/bin/bash
clear
cat << 'ASCII_EOF' | lolcat
⠉⠉⠉⠉⠁    ⠒⠂⠰⠤⢤⣀⡀
               ⠛⠻⢤
 ⠠ ⠐ ⠒  ⠈⠉⠉⠉⠉⢉⣉⣉⣉⣙⡀
       ⢀⡀⠤⠒⠒⠉⠁    ⠳⣤⣀⣀⡀
      ⠈          ⣠⣶⠛⠛⠉⠛⠛⠶⢦⣤⡐⢀
                ⣰⡿⠁       ⠈⠉⢳⣦
                ⣿⡇           ⠉⠳⡤
                ⢹⣇
                 ⠙⢷⣤⣀⣀
                   ⠈⠉⠙⠛⠛⠳⠶⢶⣦⠤⣄⡀
                           ⠉⠳⣄⠉⠑⢄
                             ⠈⠳⡀ ⠁
                               ⠱⡄
                                ⢰
                                 ⡄
        Welcome, GRAY HAT LK-HACKERS.
        Team leader: CYBER BLACK LION
ASCII_EOF
echo ""
MENU_EOF

chmod +x $HOME/.lk_menu.sh

# Clean up .bashrc to avoid duplicates
sed -i '/.lk_menu.sh/d' $HOME/.bashrc
sed -i '/export PS1=/d' $HOME/.bashrc

# Append configurations to .bashrc
cat >> $HOME/.bashrc << 'BASHRC_EOF'

# LK-HACKERS Custom Settings
if [ -f $HOME/.lk_menu.sh ]; then
    $HOME/.lk_menu.sh
fi

# Yellow colored PS1
export PS1='\[\e[1;33m\]LK-HACKERS/TEAM:\w# \[\e[0m\]'
BASHRC_EOF

echo "--------------------------------------"
echo "Installation Finished! Restart your terminal."
