FROM ubuntu:25.04

# Install core CLI tools and SSH service
RUN apt-get update && \
    apt-get install -y \
        iputils-ping net-tools curl wget openssh-server sudo nano vim bash coreutils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Ensure /var/run/sshd exists
RUN mkdir -p /var/run/sshd

# Create user 'dockeruser' if not present, set password, and add to sudo
RUN id -u dockeruser 2>/dev/null || useradd -m -s /bin/bash dockeruser && \
    echo 'dockeruser:dockerpassword' | chpasswd && \
    adduser dockeruser sudo

# Expose SSH, HTTP, FTP ports (for use with docker-compose.yml)
EXPOSE 22 80 21

#Run this to install wazuh-agent
RUN wget https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.14.0-1_amd64.deb && sudo WAZUH_MANAGER='wazuh.manager' WAZUH_AGENT_GROUP='default' WAZUH_AGENT_NAME='btd-ubuntu-1' dpkg -i ./wazuh-agent_4.14.0-1_amd64.deb
# Start SSH and keep container running
CMD service ssh start && tail -f /dev/null

