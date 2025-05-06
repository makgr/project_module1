# Step 1: Use an official Node.js runtime as the base image
FROM node:16

# Step 2: Set the working directory in the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json to the container
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application code into the container
COPY . .

# Step 6: Expose the application port (typically 3000 for Express)
EXPOSE 3000

# Step 7: Start the Express.js app
CMD ["npm", "start"]
