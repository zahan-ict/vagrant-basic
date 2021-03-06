# Update Packages
sudo apt-get update

# Upgrade Packages
sudo apt-get upgrade

# Install git
apt-get install -y git

# Install java 11
#Install AdoptOpenJDK
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
sudo apt-get update
sudo apt-get install -y adoptopenjdk-11-hotspot


#sudo apt install default-jdk

#Install GraalVM
cd /tmp
wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-20.1.0/graalvm-ce-java11-linux-amd64-20.1.0.tar.gz
sudo tar -xvf graalvm-ce-java11-linux-amd64-20.1.0.tar.gz -C /opt

cd /opt/graalvm-ce-java11-20.1.0/lib/installer/bin
sudo ./gu install native-image


#Install Maven
cd /tmp
wget https://apache.cs.uu.nl/maven/maven-3/3.8.2/binaries/apache-maven-3.8.2-bin.tar.gz
sudo tar xzvf apache-maven-3.8.2-bin.tar.gz -C /opt
#apt install -y maven  

#Permanently setting environment variables for all users
sudo cp /vagrant/env.sh /etc/profile.d/env.sh

#Clean up
rm /tmp/graalvm-ce-java11-linux-amd64-20.1.0.tar.gz
rm /tmp/apache-maven-3.8.2-bin.tar.gz

echo "**** End installing Quarkus Setting"