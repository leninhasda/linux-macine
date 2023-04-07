PM=apt

# install tools
${PM} install -y git
${PM} install -y curl
${PM} install -y ca-certificates
${PM} install -y gnupg
${PM} install -y snapd 
${PM} install -y fzf
${PM} install -y wget
${PM} install -y graphviz
${PM} install -y unzip


# docker
mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null
${PM} update

${PM} install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-compose
groupadd docker
usermod -aG docker $USER

# google-chome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
${PM} install -y ./google-chrome-stable_current_amd64.deb
rm ./google-chrome-stable_current_amd64.deb
	
# install from snap
snap install alacritty --classic
snap install slack
snap install 1password
snap install tmux --classic
snap install code --classic
snap install dbeaver-ce
snap install go --classic
snap install nvim --classic
snap install helm --classic
snap install kubectl --classic

# install aws
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
rm -rf ./aws
rm awscliv2.zip

# tools: zsh
${PM} install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh > zsh-install.sh)"
chmod +x zsh-install.sh
./zsh-install.sh
rm ./zsh-install.sh

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# source ~/.zshrc

