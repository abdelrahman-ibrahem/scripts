#!/bin/bash

# Add Dart repository and key
sudo apt update
sudo apt install -y apt-transport-https

# Remove existing Dart GPG key if it exists
sudo rm /usr/share/keyrings/dart.gpg

# Add Dart GPG key
sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor > /usr/share/keyrings/dart.gpg'

# Add Dart repository to sources.list.d
echo "deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main" | sudo tee /etc/apt/sources.list.d/dart.list > /dev/null

# Install Dart
sudo apt update
sudo apt install -y dart


