FROM debian:9.8-slim

LABEL "version"="1.0.0"
LABEL "repository"="https://github.com/the-robots/github-status-light"
LABEL "homepage"="https://github.com/the-robots/github-status-light"
LABEL "maintainer"="melscoop <melscoop@github.com>"
LABEL "com.github.actions.name"="GitHub Status Indicator"
LABEL "com.github.actions.description"="Provides status light update for GitHub outages"
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="gray-dark"

# Install curl
RUN apt update && apt install -y curl

# Add the entry point
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Load the entry point
ENTRYPOINT ["/entrypoint.sh"]
