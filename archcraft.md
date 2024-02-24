# Backup
- [ ] Backup Notes : ( Piyotes , Void )


# Archcraft Setup

1. Download Latest ISO
2. Ventoy into USB
3. Boot it up & Lite the fire 

## Refresh
```sh
sudo pacman -Syyu
sudo pacman -S archcraft-i3wm
sudo pacman -S yay git 
# error
sudo pacman -S archlinux-keyrings
sudo pacman-key --init
sudo pacman-key --populate
```

## Git Congif
```sh
git config --global user.name "username"
git config --global user.email "example@gmail.com"
ssh-keygen -t ed25519 -C "example@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
```

## install pacman
```sh
sudo pacman -S fragments gnome-disk-utility
sudo pacman -S syncthing
sudo pacman -S asciinema sass sassc font-manager otf-hermit postgresql yq
sudo pacman -S virtualbox-guest-iso virtualbox leafpad
```
## install yay

```sh
yay -S logseq-dekstop-bin ventoy-bin qbittorrent
yay -S brave-bin otf-monocraft ark
yay -S epy-ereader-git msql
yay -S screendimmer kdeconnect chromium leafpad ark 
yay -S tor-browser vlc moosync gnome-boxes motrix
yay -S pfetch micro badwolf
yay -S jq httpie rip-grep
yay -S lazygit lazydocker ngrok tmate slides
yay -S glow pipes.sh tldr tmux bat fd ripgrep fzy
```

## Dev Tools
```sh
yay -S publii mockoon-bin
sudo pacman -S docker docker-compose postman vagrant
sudo pacman -S php yarn pnpm deno
```
### Node / NVM
```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.zshrc

# or

sudo pacman -S nodejs npm 
```

### Sublime
```sh
yay -S sublime-text-4
[
        "All Autocomplete",
        "BracketHighlighter",
        "Emmet",
        "FileIcons",
        "Git",
        "GitGutter",
        "HTML-CSS-JS Prettify",
        "JavaScript Completions",
        "Materialize",
        "Monokai Dark",
        "Notes",
        "Sass",
        "Sass Build",
        "SideBarEnhancements",
        "Terminus",
        "Vue Syntax Highlight",
    "Markdown editing"
]
```

### MongoDB
```sh
yay -S mongodb-bin mongodb-compass
sudo mkdir /data
sudo mkdir /data/db
sudo chown -R $USER /data/db
mongod --ipv6
```

### Postgres
```sh
sudo pacman -U archcraft-wayfire-3.0-0-any.pkg.tar.zst
sudo pacman -S postgresql
sudo -u postgres initdb --locale en_US.UTF-8 -D /var/lib/postgres/data
sudo systemctl start postgresql
sudo su - postgres
sudo systemctl start postgresql
```

### Zsh
```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh}/plugins/zsh-autosuggestions
nano ~/.zshrc # add : zsh-syntax-highlighting  zsh-autosuggestions  z
source ~/.zshrc
```

### Neovim
```sh
yay -S neovim

# 1. Astro Vim 
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak\nmv ~/.local/state/nvim ~/.local/state/nvim.bak\nmv ~/.cache/nvim ~/.cache/nvim.bak
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim && nvim
nvim

# 2. NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
:NvChadUpdate

```


## Utility

- loginmenu
```
`sudo nvim /etc/sddm.conf` 
> session = i3
```

- pfetch
```sh
yay -S pfetch
echo pfetch >> ~/.zshrc
source ~/.zshrc
```
- Note Publishing / Documentation
```sh
sudo yarn add global retypeapp
```