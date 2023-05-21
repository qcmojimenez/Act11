FROM ubuntu
MAINTAINER tipqc  <qcmojimenez@tip.edu.ph>

# Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# Update packages
RUN apt update; apt dist-upgrade -y

# Install apache2 server
RUN apt install -y apache2

# Install mariadb server
RUN apt install -y mariadb-server

# Set entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND
