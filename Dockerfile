# Use the specified version of Saleor as the base image
FROM ghcr.io/saleor/saleor:3.18

# Install any additional packages you need
# RUN pip install appmap

# COPY appmap.yml.for-docker /app/appmap.yml