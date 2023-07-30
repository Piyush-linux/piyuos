#-- installation

# 0. update
sudo pacman -Syu
sudo pacman -S yay git


#--- 1. G I T ---
git config --global user.email "name@email.com"
git config --global user.name "piyuos"

#--- 2. G U I ---

# dk 
# copy custom dk fils in to /.config/dk dir
# keybiding : 
# set nitrogen wallpaper Once
# info : man dkcmd
# Setup DE
yay -S dk tiramisu-git ly nitrogen ranger mvp mpd cmus
sudo pacman -S sxhkd
mkdir -p ~/.config/dk
cp /usr/share/doc/dk/dkrc $HOME/.config/dk/
cp /usr/share/doc/dk/sxhkdrc $HOME/.config/dk/
yay -S st 

# Condif DK
```sh
echo "Hello $asas"
```


# install assets
yay -S nordic-wallpapers otf-hermit otf-monocraft 



#--- C L I ---

# Setup Zsh

# Setup CLI
yay -S dash-git gum-bin glow-git micro ly
echo "~/.pcraft/conf/pinit.sh" >> ~/.bashrc
chsh -s /usr/bin/dash  
source ~/.bashrc


```wallpaper 
cp /usr/share/backgrounds/nordic-wallpapers/ ~/Pictures
````

# zsh & alis
echo "~/piyuos/pcraft/alias.sh" >> ~/.zshrc
source ~/.zshrc

# 2. neovim + NvChad
yay -S neovim
# Setup Neovim
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync
cp -r ~/.config/nvim/lua/user_example/ ~/.config/nvim/lua/user/


#--- INSTALL APP ----

# Utils
yay -S bat fd slides tldr lazygit micro glow ventoy
yay -S jq pageres-cli htop rip-grep
yay -S fzy funky procs leafpad
yay -S youtube-dl asciinema screen-dimmer tmux 

# App
yay -S sxiv zathura surf ranger scrot pyroom
yay -S cmus mpd mpv neomutt epy-git

# Dev
yay -S node npm ruby-sass mongodb sublime-text-4 autoexec
yay -S httpie zh neovim chromium

# Fun
yay -S cmatrix pipes.sh


# Account Setup
# suckless tools
# diagram : gliffy
# textEditor : sublime
# email : mailspring

glow $repo