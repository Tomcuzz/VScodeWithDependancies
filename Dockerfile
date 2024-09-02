FROM lscr.io/linuxserver/code-server:latest

# Update apt-get
RUN apt-get update

# Install ansible
RUN apt-get install ansible -y
RUN apt-get install sshpass -y

RUN echo "sh /startup-script.sh" >> /etc/bash.bashrc

ENTRYPOINT ["/init"]
