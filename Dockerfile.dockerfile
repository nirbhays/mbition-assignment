#  Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Coping the HTML file and any other necessary files into the container
COPY mb-assignment.html .

# Exposing a port for the web application (optional)
EXPOSE 80

# Start a simple HTTP server to serve the HTML page
CMD ["npx", "http-server", "-p", "80"]
