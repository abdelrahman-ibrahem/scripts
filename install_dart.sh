sudo apt update & sudo apt upgrade -y 
sudo wget -qO /etc/apt/trusted.gpg.d/dart_linux_signing_key.asc https://dl-ssl.google.com/linux/linux_signing_key.pub
sudo wget -qO /etc/apt/sources.list.d/dart_stable.list https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list
sudo apt update
sudo apt install -y dart