# update and upgrade
sudo apt-get update
sudo apt-get upgrade

# installing utilities: 
sudo add-apt-repository ppa:aslatter/ppa -y # for alacritty
sudo apt-get update
sudo apt-get install -y zsh fzf exa plank alacritty git nodejs npm vlc python3-pip tar preload neofetch ripgrep
sudo dpkg -i ./bat/bat_0.15.4_amd64.deb
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# installing nvim:
chmod u+x ./nvim_install/nvim.appimage
sudo mv ./nvim_install/nvim.appimage /usr/local/bin/nvim

# unpacking zip files:
tar -xJvf ./themes/themes.tar.xz -C ./themes/
tar -xJvf ./gestures/gestures.tar.xz - C ./gestures/
tar -xJvf ./bat/bat.tar.xz -C ./bat/
tar -xJvf ./fonts/fonts.tar.xz -C ./fonts/
tar -xJvf ./icons/icons.tar.xz -C ./icons/
tar -xJvf ./zsh/zsh.tar.xz -C ./zsh/
tar -xJvf ./plank_themes/plank_themes.tar.xz -C ./plank_themes/

# deleting the zip files:
# rm -rf ./themes/themes.tar.xz
# rm -rf ./gestures/gestures.tar.xz
# rm -rf ./bat/bat.tar.xz
# rm -rf ./fonts/fonts.tar.xz
# rm -rf ./icons/icons.tar.xz
# rm -rf ./zsh/zsh.tar.xz
# rm -rf ./plank_themes/plank_themes.tar.xz

# creating necessary direcories:
if [ ! -e ~/.local/share/fonts/ ]; then
	mkdir -p ~/.local/share/fonts/
fi
if [ ! -e ~/.local/share/plank/ ]; then
	mkdir -p ~/.local/share/plank/
    mkdir -p ~/.local/share/plank/themes/
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
mkdir -p ~/.config/tmux/

# installing necessary fonts:
cp -r ./fonts/MesloGL/* ~/.local/share/fonts/
cp -r ./fonts/Hack/* ~/.local/share/fonts/
cp -r ./fonts/FiraCode/* ~/.local/share/fonts/
cp -r ./fonts/Terminus/* ~/.local/share/fonts/
fc-cache -f -v

# coping theme settings:
cp -r ./wallpapers/* ~/.wallpapers/
cp -r ./themes/* ~/.themes/
cp -r ./icons/* ~/.icons/
cp -r ./plank_themes/* ~/.local/share/plank/themes

# onfiguring kitty:
cp -r ./alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# configuring zsh: 
cp ./zsh/zshrc ~/.zshrc
cp -r ./zsh/oh-my-zsh ~/.oh-my-zsh
cp ./zsh/p10k.zsh ~/.p10k.zsh 

# configuring tmux:
cp ./tmux/tmux.conf ~/.config/tmux/
# if icons not shows, reinstall UTF-8 localle, by installing en_us.UTF-8(something like that)
# sudo dpkg-reconfigure locales => for debian based, for other versions verify.

#configuring nvim:
cp -r ./nvim/* ~/.config/nvim/

# switching shell
sudo chsh -s /bin/zsh

# grub configuration only for dual boot, so by default disabled
# grub ppa only for debian based => see how to install on other linux
#
# sudo ./boot_loaders/install.sh  PERF: mostly prefer vimix theme
#
# sudo add-apt-repository ppa:danielrichter2007/grub-customizer
# sudo apt-get update
# sudo apt-get install grub-customizer

# autoremoving unwanted stuffs:
sudo apt-get purge gnome-terminal 
sudo apt-get autoremove
sudo apt-get autoclean

# rebooting:
sudo reboot now

# change alacritty to default terminal
