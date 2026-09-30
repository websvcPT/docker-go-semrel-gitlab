# FROM registry.gitlab.com/haynes/go-semrel-gitlab:v0.22.0
FROM registry.gitlab.com/juhani/go-semrel-gitlab:v0.22.0-mr-opt-in.3

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        jq \
    && rm -rf /var/lib/apt/lists/*
