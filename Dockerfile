FROM data.forgejo.org/oci/node:20-bullseye

RUN apt-get update \
    && apt-get install -y \
      git \
      openssh-client \
      python3-pip \
    && pip install \
      ansible \
      requests