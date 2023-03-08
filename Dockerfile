FROM ubuntu:latest

ENV PATH="$PATH:/hadoop/bin:/hadoop/sbin"

RUN apt-get update && apt-get install -y sudo fish openssh-server openssh-client default-jdk

RUN ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa \
    && cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config \
    && sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN mkdir hadoop hdfs

CMD service ssh restart && sleep infinity
