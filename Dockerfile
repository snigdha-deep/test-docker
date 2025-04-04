# Use official Node.js image as base
FROM node:18-alpine

# Set working directory in container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy application files
COPY . .

# Expose the port the app runs on
EXPOSE 3060

# Command to run the application
CMD ["node", "app.js"]

