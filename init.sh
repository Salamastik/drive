sudo apt update && sudo apt install -y git docker.io wget curl 
sudo snap install --classic code

# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install 22

# Verify the Node.js version:
node -v # Should print "v22.17.0".
nvm current # Should print "v22.17.0".

# Verify npm version:
npm -v # Should print "10.9.2".
npm install -g @google/gemini-cli

sudo usermod -aG docker $USER
newgrp docker

git clone git@github.com:Salamastik/open-webui.git

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install -y python3.11 python3.11-venv python3.11-dev
ssh-keygen

