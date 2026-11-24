// Dockerfile for a Node.js application
FROM node:16
// Set the working directory inside the container
WORKDIR /app
// copy json package dependencies to the working directory
COPY package.json .
// install dependencies
RUN npm install -r package.json
// copy the rest of the application code to the working directory
COPY . .
// Exposes port 3000
EXPOSE 3000
// Start the application
CMD ["npm", "start"]