# Stage 1: Build React App
FROM node:18-alpine AS build

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npm run build

# Stage 2: Serve with Node.js
FROM node:18-alpine

WORKDIR /app

# Install serve package globally
RUN npm install -g serve

# Copy the built React app
COPY --from=build /app/build ./build

# Expose port (will be overridden by PORT env var)
EXPOSE 8080

# Start the server
CMD ["serve", "-s", "build", "-l", "8080"]
