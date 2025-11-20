# Use the official Traefik image
FROM traefik:v3.6

# Create a directory for the Traefik configuration
RUN mkdir -p /etc/traefik

# Copy the Traefik configuration file into the container
# COPY ./files/traefik.yml /etc/traefik/traefik.yml
# COPY ./files/traefik.crt /etc/traefik/traefik.crt
# COPY ./files/traefik.key /etc/traefik/traefik.key

# Set up Traefik to run with the specified configuration file
ENTRYPOINT ["traefik", "--configFile=/etc/traefik/traefik.yml"]
