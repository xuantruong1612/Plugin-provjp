# Nvim Config by *Xuân Trường*

ㅤㅤㅤㅤㅤㅤㅤㅤㅤ
# *Tài nguyên* quan trọng
- **Với MacOs, Linux:**
 
*1. MacOs*
```c
brew install curl
```
*2. Linux*
```c
sudo apt install curl -y
```
Sau đó:
```c
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
- **Với Windown**

*1. Git Bash*
```c
curl -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
*2. PowerShell*
```c
md -Path "$HOME\AppData\Local\nvim\autoload" -ErrorAction Ignore
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile "$HOME\AppData\Local\nvim\autoload\plug.vim"
```
# Nếu k tải được *tài nguyên* thì có thể tải thủ công
- **Linux, MacOs:**

 1. Mở .local/share/nvim/site/autoload/plug.vim
 
    ***Nếu không có thì tự tạo file tương ứng***
    
 2. Copy code trong [*đây*](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim) dán vào *plug.vim*
ㅤㅤㅤㅤㅤㅤㅤㅤㅤ

# Install
```c
git clone https:github.com/xuantruong1612/nvim.git
```

# Chú ý
Khi dùng *plugins* thì trong ***init.vim*** nhớ ***:PlugInstall*** nhé!!!
ㅤㅤㅤㅤㅤㅤㅤㅤㅤ
ㅤㅤㅤㅤㅤㅤㅤㅤㅤ
### Thắc mắc
Luôn *upgrade* nvim nên có nhiều *commit* nhé!!!ㅤㅤㅤㅤㅤㅤㅤ
***
