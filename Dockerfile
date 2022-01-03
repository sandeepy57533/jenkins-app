FROM centos:latest
RUN yum install wget rpm tar zip -y && yum install java-11-openjdk-devel -y
RUN yum install epel-release -y
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum install jenkins -y
ENTRYPOINT ["catalina.sh" "jenkins"]
