
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the project
COPY . .

# Build the app
RUN npm run build

# Expose port (default for Next.js)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]