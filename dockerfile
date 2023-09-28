# Use an official NGINX base image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /var/www/html

# Remove the default NGINX configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your NGINX server configuration to the container
COPY default.conf /etc/nginx/conf.d/

# Copy the Laravel application files to the container
COPY . /var/www/html/

# Expose port 80 for NGINX
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon on;"]
