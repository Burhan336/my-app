# 1. Base image
FROM node:18

# 2. Create app directory
WORKDIR /app

# 3. Install dependencies
COPY package*.json ./
RUN npm install

# 4. Copy app source
COPY . .

# 5. Build the NestJS app
RUN npm run build

# 6. Expose app port
EXPOSE 3000

# 7. Run the app
CMD ["node", "dist/main"]
