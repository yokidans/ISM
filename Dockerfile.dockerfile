# Use an official Python runtime as a base image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any system dependencies your project might need
# RUN apt-get update && apt-get install -y some-package

# Install any Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run a shell when the container starts
CMD ["/bin/bash"]