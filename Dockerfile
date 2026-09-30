# FROM registry.gitlab.com/haynes/go-semrel-gitlab:v0.22.0
FROM registry.gitlab.com/juhani/go-semrel-gitlab:v0.22.0-mr-opt-in.3

ENV DEBIAN_FRONTEND=noninteractive

RUN printf '%s\n' \
    'deb [check-valid-until=no] http://archive.debian.org/debian buster main' \
    'deb [check-valid-until=no] http://archive.debian.org/debian buster-updates main' \
    'deb [check-valid-until=no] http://archive.debian.org/debian-security buster/updates main' \
    > /etc/apt/sources.list \
    && apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        jq \
    && rm -rf /var/lib/apt/lists/*
