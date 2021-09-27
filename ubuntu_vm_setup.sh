sudo apt update && sudo apt upgrade
sudo apt install software-properties-common git -y
git config --global user.email "theognis1002@gmail.com" && git config --global user.name "theognis1002" && git config --global core.editor "vim" && git config credential.helper cache
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install python3.8 python3.9 -y
echo "installed `python3.8 --version`"
echo "installed `python3.9 --version`"
