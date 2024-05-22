# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install Nginx
RUN apt-get update && apt-get install -y nginx

# Create a non-root user and switch to it
# RUN useradd -m ubuntu && \
    # chown -R ubuntu:ubuntu /home/ubuntu

#RUN useradd -d /home/ubuntu -g ubuntu ubuntu

# Set the default user
USER ubuntu

# Copy the index.html file from the local machine to the container
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Set the default command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
