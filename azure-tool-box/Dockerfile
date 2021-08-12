# This is a tool-box that contains psql(client only), jdk11 and az-cli.
FROM debian:buster-slim

RUN set -ex; \
  if ! command -v gpg > /dev/null; then \
    apt-get update; \
    apt-get install -y \
      ca-certificates apt-transport-https apt-utils git lsb-release gnupg dirmngr curl wget iputils-ping \
      postgresql-client openjdk-11-jdk \
      ; \
    rm -rf /var/lib/apt/lists/*; \
  fi

RUN curl -sL https://packages.microsoft.com/keys/microsoft.asc | \
    gpg --dearmor | \
    tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null; \
    AZ_REPO=$(lsb_release -cs); \
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
    tee /etc/apt/sources.list.d/azure-cli.list; \
    apt-get update; \
    apt-get install -y azure-cli;

CMD ["bash"]
