amazon-linux-extras install epel -y

wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo

rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key

yum install -y jenkins

service jenkins start

chkconfig jenkins on
 
cat /var/lib/jenkins/secrets/initialAdminPassword

