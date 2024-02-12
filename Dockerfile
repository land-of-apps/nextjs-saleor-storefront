# Use the specified version of Saleor as the base image
FROM ghcr.io/saleor/saleor:3.18

RUN apt-get update && apt-get install -y \
    gcc \
    build-essential \
    libpq-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sSL https://install.python-poetry.org | python3 -

RUN poetry add --group=dev appmap

COPY appmap.yml.for-docker /app/appmap.yml