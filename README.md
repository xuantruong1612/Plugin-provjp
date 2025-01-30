# Nvim Config by Xuân Trường

## 1. Tài nguyên quan trọng
- Với MacOs, Linux:
1. MacOs
```c
brew install curl
```
2. Lunux
```c
sudo apt install curl -y
```
```c
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
- Với Windown
1. Gitbash
```c
curl -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
2. PowerShell
```c
md -Path "$HOME\AppData\Local\nvim\autoload" -ErrorAction Ignore
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile "$HOME\AppData\Local\nvim\autoload\plug.vim"
```
---
- Khi dùng *plug* thì trong **init.vim** nhớ **:PlugInstall** nhé!!!

# Luôn cập nhật nvim nên có nhiều commit.

