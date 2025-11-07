# Use the official Traefik image
FROM traefik:v3.2

# Create a directory for the Traefik configuration
RUN mkdir -p /etc/traefik

# Copy the Traefik configuration file into the container
COPY ./traefik.yml /etc/traefik/traefik.yml

# Expose ports for Traefik
EXPOSE 8080
EXPOSE 80
EXPOSE 3000

# Set up Traefik to run with the specified configuration file
ENTRYPOINT ["traefik", "--configFile=/etc/traefik/traefik.yml"]
