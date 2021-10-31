#! /bin/bash
set -e pipefail

# This assumes arch or an arch derived distro.

cd ~

# Install ZSH
sudo pacman -S zsh

# Change Shell (chsh) to zsh. 
sudo chsh -s /bin/zsh

# Install Oh My ZSH, which manages plugins for ZSH.
# I can't believe this is actually how oh-my-zsh recommends you install it
# goddamnit.
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel10k, because it's hot.
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

exec $SHELL

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
