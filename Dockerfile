# Use a small version of Node.js
FROM node:18-alpine

# Make a folder in the container for your app
WORKDIR /app

# Copy files into the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of your code
COPY . .

# Build the app
RUN npm run build

# Open port 3000 for the app
EXPOSE 3000

# Start the app
CMD ["node", "dist/main"]
