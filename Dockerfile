# Use the official Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt /app

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app files to the directory in the container
COPY server.py /app

# Expose the port on which the Flask app will run
EXPOSE 5000

# Start the Flask app
CMD ["python", "server.py"]

