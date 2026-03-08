# Start from a small Linux image
FROM alpine:latest

# Install git
RUN apk add --no-cache git

# Set working directory
WORKDIR /repo

# Environment variable for repo URL
ENV REPO_URL=https://github.com/ShinySir/VTF-Editor.git

# Clone repo if not already cloned, otherwise pull updates
CMD if [ ! -d "/repo/.git" ]; then \
        git clone $REPO_URL /repo; \
    else \
        cd /repo && git pull; \
    fi && \
    # Keep container running so files are accessible
    tail -f /dev/null