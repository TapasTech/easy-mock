FROM node:8.4.0

# Set the working directory to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
ADD . /app

# RUN npm config set registry=https://registry.npm.taobao.org/
RUN npm install
RUN npm run build

# Make port 80 available to the world outside this container
EXPOSE 80

# Run npm start when the container launches
CMD ["npm", "start"]
