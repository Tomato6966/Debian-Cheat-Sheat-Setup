echo "Setup-Logger :: Starting the Setup"

mkdir setuppedThings
cd setuppedThings

/etc/init.d/apache2 stop
apt-get purge apache* -y

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y sudo zip git-all curl jq file unzip make gcc g++ python python-dev libtool build-essential wget zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev libbz2-dev htop nano

sudo apt-get install -y aptitude nginx ufw 

apt update -y
apt upgrade -y

echo "Setup-Logger :: Installing nodejs"

curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt-get install -y nodejs

node -v

echo "Setup-Logger :: installing yarn"

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
apt update -y
apt install -y yarn

echo "Setup-Logger :: install pm2" 

npm install pm2

echo "Setup-Logger :: install pythons" 

apt-get install python3-pip
apt-get install python-pip
wget https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tar.xz
tar -xf Python-3.9.1.tar.xz
cd Python-3.9.1
./configure --enable-optimizations
make -j 4
make altinstall

python3.9 --version

echo "Setup-Logger :: install ffmpeg"

apt install ffmpeg
ffmpeg -version

echo "Setup-Logger :: intalling multiple java Versions"

wget https://download.java.net/openjdk/jdk8u41/ri/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo tar zxvf openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz -C /usr/lib/jvm
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk8u41/bin/java" 1
sudo update-alternatives --set java /usr/lib/jvm/jdk8u41/bin/java
java -version

wget https://download.java.net/openjdk/jdk13/ri/openjdk-13+33_linux-x64_bin.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo tar zxvf openjdk-13+33_linux-x64_bin.tar.gz -C /usr/lib/jvm
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-13/bin/java" 1
sudo update-alternatives --set java /usr/lib/jvm/jdk-13/bin/java
java -version

wget https://download.java.net/openjdk/jdk15/ri/openjdk-15+36_linux-x64_bin.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo tar zxvf openjdk-15+36_linux-x64_bin.tar.gz -C /usr/lib/jvm
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-15/bin/java" 1
sudo update-alternatives --set java /usr/lib/jvm/jdk-15/bin/java
java -version

wget https://download.java.net/openjdk/jdk16/ri/openjdk-16+36_linux-x64_bin.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo tar zxvf openjdk-16+36_linux-x64_bin.tar.gz -C /usr/lib/jvm
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-16/bin/java" 1
sudo update-alternatives --set java /usr/lib/jvm/jdk-16/bin/java
java -version

wget https://download.java.net/openjdk/jdk11/ri/openjdk-11+28_linux-x64_bin.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo tar zxvf openjdk-11+28_linux-x64_bin.tar.gz -C /usr/lib/jvm
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-11/bin/java" 1
sudo update-alternatives --set java /usr/lib/jvm/jdk-11/bin/java
java -version


echo "Setup-Logger :: installing speedtest"

curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
apt-get install speedtest -y

echo "Setup-Logger :: changing the ~/.bashrc"

wget https://raw.githubusercontent.com/Tomato6966/Debian-Cheat-Sheet-Setup/main/.bashrc
cp .bashrc ~/.bashrc



echo "Setup-Logger :: deleting the tar Files"

rm *.ta* -rf

echo "Setup-Logger :: Make sure to KEEP the python Folder!"
echo "Setup-Logger :: Installings are done, you can swap java versions with: sudo update-alternatives --config java"

java -version
ffmpeg -version
java -version
python3.9 --version
node -v
npm --version







