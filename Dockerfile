# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the entire application code
COPY . .

# Install dependencies directly (if specified elsewhere in the code)
RUN npm install

# Build the application (ensure this command is valid)
RUN npm run build:prod

# Expose the application port
EXPOSE 3000

# Command to run the application
CMD ["npm", "run", "start"]
