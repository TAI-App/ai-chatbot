# Use the Node.js base image
FROM node:18

# Set the working directory
WORKDIR /

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port for the app
EXPOSE 8080

# Start the Next.js app
CMD ["npm", "start"]
