#maven

cd /tmp

wget https://www-eu.apache.org/dist/maven/maven-3/3.8.3/binaries/apache-maven-3.8.3-bin.tar.gz

tar xf /tmp/apache-maven-*.tar.gz -C /opt

ln -s /opt/apache-maven-3.8.3 /opt/maven

cat >/etc/profile.d/maven.sh <<EOF 
export JAVA_HOME=/usr/lib/jvm/jre-11-openjdk
export M2_HOME=/opt/maven
export MAVEN_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}
EOF

chmod +x /etc/profile.d/maven.sh

source /etc/profile.d/maven.sh

mvn -version

rm -f apache-maven-3.8.3-bin.tar.gz