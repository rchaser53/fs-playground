FROM debian:latest

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
# RUN echo 'root:root123' | chpasswd
# RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
COPY id_ed.pub /root/.ssh/id_ed.pub
RUN chmod 644 /root/.ssh/id_ed.pub
RUN cat /root/.ssh/id_ed.pub >> /root/.ssh/authorized_keys


EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]