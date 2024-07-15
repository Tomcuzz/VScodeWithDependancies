FROM lscr.io/linuxserver/code-server:latest

RUN echo "sh /startup-script.sh" >> /etc/bash.bashrc

ENTRYPOINT ["/init"]