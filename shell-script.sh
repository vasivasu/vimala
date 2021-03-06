udo chown -R ec2-user:ec2-user /opt
cd /opt
sudo yum install wget -y
wget https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u282-b08/OpenJDK8U-jdk_x64_linux_hotspot_8u282b08.tar.gz
tar -zxvf OpenJDK8U-jdk_x64_linux_hotspot_8u282b08.tar.gz 
mv jdk8u282-b08/ java8
sudo sed -i '$a export JAVA_HOME=/opt/java8' /etc/profile
sudo sed -i '$a export PATH=$PATH:/opt/java8/bin' /etc/profile
#wget https://dlcdn.apache.org/maven/maven-3/3.8.3/binaries/apache-maven-3.8.3-bin.tar.gz --no-check-certificate
#mv apache-maven-3.8.3 maven3
#sudo sed -i '$a export M2_HOME=/opt/maven3' /etc/profile
#sudo sed -i '$a export PATH=$PATH:/opt/maven3/bin' /etc/profile
#source /etc/profile
wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.72/bin/apache-tomcat-8.5.72.tar.gz
tar -zxvf apache-tomcat-8.5.72.tar.gz 
mv apache-tomcat-8.5.72 tomcat8
rm -rf *.tar.gz
cd /opt/tomcat8/webapps
wget https://get.jenkins.io/war/2.314/jenkins.war
sudo yum install fontconfig -y 
sudo chown -R ec2-user:ec2-user /opt
sh /opt/tomcat8/bin/startup.sh 
