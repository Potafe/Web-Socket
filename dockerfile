# Use Node.js as the base image
FROM node:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files from the current directory to the working directory in the container
COPY . .

# Build the Vite application
RUN npm run build

# Expose the port that the Vite app runs on (default is 5173, but you can change it if needed)
EXPOSE 5173

# Set environment variable for production
ENV NODE_ENV=production

# Start the Vite app
CMD ["npm", "run", "preview"]
