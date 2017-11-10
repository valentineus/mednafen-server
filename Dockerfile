FROM "debian:stable-slim"
MAINTAINER "Valentin Popov <info@valentineus.link>"

# Install the application
ADD ["mednafen-server_*_amd64.deb", "/tmp/mednafen-server.deb"]
RUN ["dpkg", "--install", "/tmp/mednafen-server.deb"]
RUN ["rm", "/tmp/mednafen-server.deb"]

# Configuration file
ADD ["standard.conf", "/etc/standard.conf"]

# Starting the server
CMD ["mednafen-server", "/etc/standard.conf"]
EXPOSE 4046