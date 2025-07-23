# Use an official Node.js base image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your files
COPY . .

# Define the port your app runs on (optional, for docs)
EXPOSE 3000

# Command to run your app
CMD ["npm", "start"]
