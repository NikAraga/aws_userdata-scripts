### Installing stable jenkins on RHEL-7 and centos-7
## install wget vim tree
### Ref https://www.vultr.com/docs/how-to-install-jenkins-on-centos-7


sudo yum install wget vim tree java-1.8.0-openjdk.x86_64 -y

sudo cp /etc/profile /etc/profile_backup
echo 'export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk' | sudo tee -a /etc/profile
echo 'export JRE_HOME=/usr/lib/jvm/jre' | sudo tee -a /etc/profile
source /etc/profile

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins -y

sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service

