# 1. Base image
FROM node:18-alpine

# 2. Create app directory
WORKDIR /app

# 3. Copy package.json and install deps
COPY package*.json ./
RUN npm install

# 4. Copy the rest of the app
COPY . .

# 5. Build the Next.js app
RUN npm run build

# 6. Expose and run
EXPOSE 3000
CMD ["npm", "start"]
