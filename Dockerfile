FROM node:8.4.0

# Set the working directory to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
ADD . /app

# Make port 7300 available to the world outside this container
EXPOSE 7300

# Run npm start when the container launches
CMD ["npm", "start"]
