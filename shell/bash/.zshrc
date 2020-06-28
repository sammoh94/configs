mkdir ~/Desktop/fish_configs
cd ~/Desktop/fish_configs
cp ~/Desktop/configs/shell/fish/* .
bash ./check_homebrew_install.sh

Install fish
brew install fish

echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s `which fish`

curl -L https://get.oh-my.fish | fish
omf install bass

mkdir ~/.config/fish/
cp ./config.fish ~/.config/fish/config.fish
rm -rf ~/.Desktop/fish_configs
exit