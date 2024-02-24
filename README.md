- Setup.sh will be used by `bash <(https://www.bash.sh)`
	+ It will ask what you want to do ?
		* Archcraft Setup
		* Script Setup
		* PIYUOS Setup
	+ Seyup
		* WM + Notify + App(ScreenLock + ScreenShot + Clipboard ...)
		* zsh
		* neovim
		* install : fun , dev , 
		
# pre-requsites
- git , Arch Base Distro

# GUI
- Terminal : st , xterm
- launcher : rofi
- pdf : mupdf
- DE : [dk](https://bitbucket.org/natemaia/dk/src/master/)
- notify : tiramisu-git , dunst
- LM/DM : [ly](https://github.com/fairyglade/ly)
- FS : ranger
- wallpaper
	+ https://www.setaswall.com/minimal-wallpapers/
	+ https://github.com/linuxdotexe/nordic-wallpapers/blob/master/wallpapers/waves.jpg
	+ https://github.com/FrenzyExists/wallpapers/blob/main/Aquarium/mega-charizard-rainbow-II.png

## Shell Setup
- xterm
- dash
- alias : conf , git , pfetch , psurf
- cli_apps 
	- FS : ranger
	- media : mpd mpv cmus 
	- email : neomutt
	- editor : helix micro
	- productivity : epy-git 

# App
- install : xh watson 

---



# Setup.sh
1. create .dir in home_dir
2. git clone self repo
3. start installation
3. setup terminal(zsh,ufetch,alias,neovim)
4. show info with glow-utility
- `https://github.com/Piyush-linux/pcraft/setup.sh | bash`
```sh
cd ~
git clone <repo_url>
bash ~/.pcraft/conf/app.sh
echo "~/.pcraft/conf/alias.sh" >> ~/.zshrc
source ~/.zshrc
```

# Alias

```sh
alias l="tree -L 1"
alias m="micro"
alias show="bat"
# conf
alias zshC="micro ~/.zshrc"
alias openboxC="micro ~/.config/openbox/rc.xml"
alias rofiC="micro ~/.config/rofi/"
alias kittyC="micro ~/.config/kitty/kitty.config"
# wifi
alias getwifi="nmcli d wifi list"
alias setwifi="nmcli c up" #setwifi <name> --ask
```

# Resources For Linux
- https://github.com/fosslife/awesome-ricing
- https://github.com/ibraheemdev/modern-unix
- https://linuxjourney.com/
- https://switowski.com/blog/favorite-cli-tools
- https://learnbyexample.github.io/curated_resources/linux_cli_scripting.html
- https://awesomeopensource.com/project/alebcay/awesome-shell

