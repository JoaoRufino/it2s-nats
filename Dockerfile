FROM scratch

COPY it2s-nats /gnatsd

# Expose client, management, and cluster ports
EXPOSE 4222 8222 6222

# Run via the configuration file
ENTRYPOINT ["/gnatsd","-p","443"]
