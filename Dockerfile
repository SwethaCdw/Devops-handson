FROM node:18

# Set working directory
WORKDIR /app

# Copy only package.json files first
COPY package*.json ./

# Install only production dependencies
RUN npm ci --omit=dev

# Copy the rest of the app (including /dist folder from GitHub Actions)
COPY . .

# Expose app port
EXPOSE 3000

# Run the app
CMD ["node", "dist/index.js"]