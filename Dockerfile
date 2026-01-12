FROM data.forgejo.org/oci/node:20-bullseye

RUN apt-get update \
    && apt-get install -y \
      git \
      openssh-client \
      python3-pip \
      python3-docker \
      python3-requests \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && pip install \
      ansible

RUN ansible-galaxy collection install community.docker --upgrade