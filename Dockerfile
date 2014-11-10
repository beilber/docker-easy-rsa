FROM ubuntu:trusty

RUN apt-get update -q

# Simple shell based CA utility
RUN apt-get install -qqy easy-rsa

# EDITOR (I hate UI)
RUN apt-get install -qqy mg

# Clear out the local repository of retrieved package files
RUN apt-get clean

# Copy easy-rsa to /opt
RUN cp -a /usr/share/easy-rsa /opt

# Create the directory that store keys.
RUN mkdir -p /opt/easy-rsa/keys

# Volume the directory store keys 
VOLUME /opt/easy-rsa/keys

# Set a beautiful PS1
RUN echo "PS1='\[\033[01;31m\]easy-rsa\[\033[01;34m\] \W \$\[\033[00m\] '" >> /root/.bashrc

# Go the place that I want.
WORKDIR /opt/easy-rsa

CMD /bin/bash
