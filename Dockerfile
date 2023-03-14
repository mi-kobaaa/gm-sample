FROM node:14-alpine

# Install GraphicsMagick
RUN apk add --update --no-cache graphicsmagick

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to /app
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files to /app
COPY . .

# Add GraphicsMagick to the system's PATH
ENV PATH="/usr/bin/gm:${PATH}"

# Expose port 3000 for the Node.js application
EXPOSE 3000

# Start the Node.js application
CMD [ "npm", "start" ]
