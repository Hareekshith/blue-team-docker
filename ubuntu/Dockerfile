FROM ubuntu:22.04

# Update and install ubuntu-standard and useful packages
RUN apt-get update && \
    apt-get install -y ubuntu-standard iputils-ping net-tools curl wget openssh-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD service ssh start && tail -f /dev/null
