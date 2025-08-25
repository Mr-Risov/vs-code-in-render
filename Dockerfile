# Use a lightweight base image
FROM ubuntu:22.04

# Prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && apt-get install -y \
    curl \
    bash \
    ca-certificates \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /home/workspace

# Copy your start script
COPY start.sh /usr/local/bin/start.sh

# Ensure it’s executable (safe in /usr/local/bin)
RUN chmod 755 /usr/local/bin/start.sh

# Expose Render port
EXPOSE 10000

# Run the start script
CMD ["/usr/local/bin/start.sh"]
