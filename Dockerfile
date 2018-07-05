FROM ubuntu:18.04
LABEL maintainer "Juan Zurano" <jgzurano@gmail.com>

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y gnupg && \
    apt-get dist-upgrade -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
