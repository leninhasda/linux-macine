# remove snaps
snap remove dbeaver-ce
snap remove slack
snap remove 1password

snap remove alacritty
snap remove tmux
snap remove code
snap remove go
snap remove nvim
snap remove helm
snap remove kubectl

apt remove -y curl
apt remove -y ca-certificates
apt remove -y gnupg
apt remove -y snapd
apt remove -y fzf
apt remove -y wget
apt remove -y graphviz
apt remove -y unzip
apt remove -y zsh
apt remove -y jq
apt remove -y docker
apt remove -y docker-compose
apt remove -y google-chrome-stable

rm -rf $HOME/.oh-my-zsh
rm $HOME/.zshrc

# # remove kubenetes helper cli
# rm /usr/local/bin/kns
# rm /usr/local/bin/ktx

# keep it last
apt autoremove -y
