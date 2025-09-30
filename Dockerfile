FROM node:lts-buster

# Set working directory
WORKDIR /app

# Copy dependency files first
COPY package*.json ./

# Install dependencies (and pm2 globally for safety)
RUN npm install -g pm2 && npm install --network-concurrency 1

# Copy the rest of the source code
COPY . .

# Expose the bot port
EXPOSE 9090

# Use pm2-runtime to keep the process in foreground
CMD ["pm2-runtime", "index.js", "--name", "FLEX-AI"]
