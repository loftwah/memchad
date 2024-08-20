# Use the official memcached image as the base
FROM memcached

# Switch to root user to install additional packages
USER root

# Install cowsay and figlet for some fun ASCII art
RUN apt-get update && apt-get install -y figlet

# Switch back to the default user
USER memcache

# Copy custom scripts into the container
COPY scripts /usr/local/bin/scripts

# Set the default port to 42069
EXPOSE 42069

# Run the welcome script and then start memcached
CMD ["/bin/bash", "-c", "/usr/local/bin/scripts/welcome.sh && exec memcached -p 42069 -u memcache"]

# Add metadata to the image
LABEL maintainer="loftwah"
LABEL version="1.1.0"
LABEL description="The coolest fork of memcached, running on port 42069."

# Healthcheck to monitor container health
HEALTHCHECK CMD memcached-tool 127.0.0.1:42069 stats || exit 1

# Default environment variables
ENV MEMCACHED_PORT 42069
ENV MEMCACHED_MAX_MEMORY 64
ENV MEMCACHED_CONNECTION_LIMIT 1024
