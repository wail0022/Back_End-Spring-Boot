# Use the official Node.js image as the base image
FROM node:18.19-alpine

# Set the working directory
WORKDIR /app

# Install Git and Angular CLI
RUN apk add --no-cache git && \
    npm install -g @angular/cli

# Clone the repository from GitHub
RUN git clone https://github.com/SalmaBenaouda/frontDoc.git . && \
    git pull

# Install the dependencies
RUN npm install

# Expose port 4200 (default for Angular development server)
EXPOSE 4200

# Clean Angular cache
RUN ng cache clean

# Start the Angular development server in production mode
CMD ["ng", "serve", "--configuration=production", "--host", "0.0.0.0"]