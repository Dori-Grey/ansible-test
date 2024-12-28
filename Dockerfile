FROM ubuntu:24.04

RUN apt update && apt install -y openssh-server supervisor
RUN mkdir /var/run/sshd
COPY ssh /root/.ssh
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]
