FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates make gcc-multilib qemu-system-x86 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ADD ./xv6-02 /xv6
WORKDIR /xv6
CMD ["/bin/bash"]
