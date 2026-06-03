# 💀 LK-HACKERS Banner & Customization Tool

LK-HACKERS කණ්ඩායම විසින් නිර්මාණය කරන ලද, ඔබේ Terminal එකට අලුත් පෙනුමක් සහ Custom Menu එකක් ලබා දෙන අතිවිශිෂ්ට Tool එක.

## ⚙️ මෙම Tool එක Run කළ හැකි තැන්.
මෙම Tool එක පහත Linux පදනම් වූ Environment වල සාර්ථකව Run කළ හැක:
* **Termux** (Android)
* **Kali Linux** (Ethical Hacking)
* **Ubuntu** (Linux Desktop/Server)

---

## 🛠 පාවිච්චි කරන විදිහ (Installation & Usage)

පහත විධානයන් (Commands) එකින් එක Terminal එකේ Type කරන්න:

# 1. Tool එකේ තියෙන ඔක්කොම ටික ලබාගන්න
git clone https://github.com/LK-HACKERS/Banner-termux.git

# 2. Folder එක ඇතුළට යන්න
cd Banner-termux

# 3. Tool එක Run කරන්න
bash run.sh

# ​🗑 Tool එක අයින් කරන විදිහ (Uninstallation)

# 1. Bashrc එකෙන් Customizations ඉවත් කිරීම
sed -i '/.lk_menu.sh/d' $HOME/.bashrc
sed -i '/export PS1=/d' $HOME/.bashrc

# 2. Tool Files මකා දැමීම
rm $HOME/.lk_menu.sh
rm -rf $HOME/Banner-termux
