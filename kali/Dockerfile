FROM kalilinux/kali-rolling

# Update and install kali-linux-headless, remove unwanted packages
RUN apt-get update && \
    apt-get install -y kali-linux-headless && \
    apt-get remove -y llvm-18 llvm-19 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
