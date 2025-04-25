# Use lightweight Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy code
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Expose port 80
EXPOSE 80

# Run the app
CMD ["python", "app.py"]
