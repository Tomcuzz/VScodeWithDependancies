FROM lscr.io/linuxserver/code-server:latest

# Update apt-get
RUN apt-get update

# Install ansible
RUN apt-get install ansible -y
RUN apt-get install sshpass -y

# Install vim
RUN apt-get install vim -y

RUN echo "sh /startup-script.sh" >> /etc/bash.bashrc

ENTRYPOINT ["/init"]
