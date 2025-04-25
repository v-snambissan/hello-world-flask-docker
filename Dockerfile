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
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]
