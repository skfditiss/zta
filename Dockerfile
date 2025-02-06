# Use official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy application files
COPY zta /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for Flask
EXPOSE 5000

# Run the application
CMD ["python", "main.py"]
