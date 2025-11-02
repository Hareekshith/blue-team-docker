FROM kalilinux/kali-rolling

RUN apt-get update && \
    apt-get install -y \
        iputils-ping net-tools curl wget openssh-server sudo nano vim nmap metasploit-framework && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*CMD ["/bin/bash"]

EXPOSE 22

CMD service ssh start && tail -f /dev/null
