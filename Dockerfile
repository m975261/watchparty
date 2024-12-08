# Use an official Node.js runtime as a base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose a port (e.g., for an Express server)
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]

