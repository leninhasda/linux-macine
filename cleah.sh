PM=apt

# remove snaps
snap remove alacritty 
snap remove slack
snap remove 1password
snap remove tmux 
snap remove code
snap remove dbeaver-ce
snap remove go
snap remove nvim
snap remove helm
snap remove kubectl

# remove kubenetes helper cli
rm /usr/local/bin/kns
rm /usr/local/bin/ktx

# removes tools
${PM} remove -y git
${PM} remove -y curl
${PM} remove -y ca-certificates
${PM} remove -y gnupg
${PM} remove -y snapd 
${PM} remove -y fzf
${PM} remove -y wget
${PM} remove -y graphviz

## how to uninstall oh-my-zsh?
${PM} remove -y zsh

## remove docker and stuff
${PM} remove -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-compose

rm -rf /etc/apt/keyrings

# remove chrome
${PM} remove -y google-chrome-stable

# keep it last
${PM} -y autoremove
