sudo apt install vim
sudo apt install screenfetch -y
sudo cp ./profiles/.bash_aliases ~/ && source ~/.bash_aliases
sudo cp ./profiles/.bashrc ~/ && source ~/.bashrc
sudo cp ./profiles/.vimrc ~/
sudo ./installers/grub_customizer_setup.sh
sudo ./installers/grub_reinstaller.sh
sudo ./installers/komorebi_setup.sh
sudo ./installers/boot_repair_setup.sh
sudo ./installers/woeusb_setup.sh
