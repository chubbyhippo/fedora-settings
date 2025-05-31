sudo dnf -y install dnf-plugins-core

echo 'eval "$(mise activate bash)"' >> ~/.bashrc


sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker
