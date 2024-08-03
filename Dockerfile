FROM node:20.16-bullseye-slim

WORKDIR /app

# Copy package.json and package-lock.json separately
COPY src/package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

CMD ["node", "src/index.js"]
