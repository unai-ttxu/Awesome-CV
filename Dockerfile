FROM texlive/texlive:latest

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt update \
    && apt install --yes --no-install-recommends \
        fonts-roboto \
        fonts-adobe-sourcesans3 \
    && rm -rf /var/lib/apt/lists/*
