# checking for updates:
sudo apt-get update
sudo apt-get upgrade

# installing utilities: 
sudo apt-get install -y zsh fzf exa plank alacritty git nodejs npm vlc python3-pip
sudo dpkg -i ./bat/bat_0.15.4_amd64.deb
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# creating necessary direcories:
if [ ! -e ~/.local/share/fonts/ ]; then
	mkdir -p ~/.local/share/fonts/
fi
mkdir -p ~/.themes/
mkdir -p ~/.icons/
mkdir -p ~/.plank_themes/
mkdir -p ~/.wallpapers/

# creating direcories inside ~/.config path:
if [ ! -e ~/.config/ ]; then
	mkdir -p ~/.config/
fi
mkdir -p ~/.config/nvim/
mkdir -p ~/.config/alacritty/

# installing necessary fonts:
cp -r ./fonts/MesloGL/* ~/.local/share/fonts/
fc-cache -f -v

# coping theme settings:
cp ./wallpapers/* ~/.wallpapers/
cp ./themes/* ~/.themes/
cp ./icons/* ~/.icons/
cp ./plank_theme/* ~/.plank_themes/

# configuring plank:
plank --autostart

# onfiguring kitty:
cp -r ./alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# configuring zsh: 
cp ./zsh/zshrc ~/.zshrc
cp -r ./zsh/oh-my-zsh ~/.oh-my-zsh
cp ./zsh/p10k.zsh ~/.p10k.zsh

# switching shell
sudo chsh -s zsh

# autoremoving unwanted stuffs:
sudo apt-get purge gnome-terminal 
sudo apt-get autoremove
sudo apt-get autoclean

# rebooting:
sudo reboot now

# change alacritty to default terminal