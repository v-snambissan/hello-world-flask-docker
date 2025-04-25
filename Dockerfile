# Use lightweight Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy code
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN pip install gunicorn

COPY . .

# Expose port 80
EXPOSE 5000

# Run the app
CMD ["gunicorn", "-w", "4", "-b", "https://sn-alerts-test.internal.wonderfulrock-f762b7f0.centralindia.azurecontainerapps.io", "app:app"]
