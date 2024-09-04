# Use an official Ubuntu base image
FROM ubuntu:latest

# Set the working directory in the container
WORKDIR /oriserve

# Copy the application code to the container
COPY . .

# Update the package list and install necessary packages
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git nginx

# Copy the application files to the nginx web directory
RUN cp -r * /var/www/html/

# Expose the default nginx port
EXPOSE 80

# Start the nginx service
CMD ["nginx", "-g", "daemon off;"]
