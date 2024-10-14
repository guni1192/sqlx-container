FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y \
    iproute2 \
    dnsutils \
    whois \
    curl \
    iputils-ping \
    openssh-client \
    openssl \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://get-gnmic.openconfig.net | bash

CMD ["/bin/bash"]
