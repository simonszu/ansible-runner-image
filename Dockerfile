FROM data.forgejo.org/oci/node:20-bullseye

RUN apt-get update \
    && apt-get install -y \
      git \
      openssh-client \
      python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && pip install \
      ansible \
      docker \
      requests

RUN ansible-galaxy collection install community.docker --upgrade