FROM ubuntu:latest

# Install apache2
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the website content to the apache directory
COPY . /var/www/html

# Configure Apache
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
