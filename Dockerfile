FROM lscr.io/linuxserver/code-server:latest

RUN echo "echo test >> /test.file" >> /etc/bash.bashrc

ENTRYPOINT ["/init"]