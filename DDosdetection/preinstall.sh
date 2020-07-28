echo 'downloading mininet'
sudo apt install mininet

echo 'downloading pox'
git clone https://github.com/noxrepo/pox

echo 'downloading hyping3'
sudo apt install hyping3

echo 'downloading tshark'
sudo apt install tshark

echo 'downloading tensorflow numpy pandas matplotlib'
pip install tensorflow==1.14 numpy pandas matplotlib
