# Use an official lightweight Python runtime
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Set environment variables
# Prevents Python from writing pyc files to disc
ENV PYTHONDONTWRITEBYTECODE=1
# Prevents Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED=1

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY app.py /app/

# Expose the port Flask runs on
EXPOSE 5000

# Run the application using Gunicorn for production readiness
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]