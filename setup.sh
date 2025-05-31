#!/usr/bin/env sh

sudo dnf install -y dnf-plugins-core
# mise
sudo dnf config-manager addrepo --from-repofile=https://mise.jdx.dev/rpm/mise.repo
sudo dnf install -y mise
echo 'eval "$(mise activate bash)"' >> ~/.bashrc
# docker
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker
