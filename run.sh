#!/bin/bash

termux-open-url https://lk-hackers.github.io/LK-HACKERS-WebSite/
if [ -x "$(command -v apt)" ]; then
    sudo apt update && sudo apt upgrade -y
    sudo apt install ruby bash -y
elif [ -x "$(command -v pkg)" ]; then
    pkg update && pkg upgrade -y
    pkg install ruby bash -y
fi
termux-open-url https://github.com/LK-HACKERS
gem install lolcat


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

chmod +x $HOME/.lk_menu.sh

sed -i '/export PS1=/d' $HOME/.bashrc

cat >> $HOME/.bashrc << 'BASHRC_EOF'

if [ -f $HOME/.lk_menu.sh ]; then
    $HOME/.lk_menu.sh
fi

export PS1='\[\e[1;33m\]LK-HACKERS/TEAM:\w# \[\e[0m\]'
BASHRC_EOF
