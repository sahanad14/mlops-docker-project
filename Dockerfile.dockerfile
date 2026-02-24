# Use lightweight Python image
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy dependency file first (better caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY run.py .
COPY config.yaml .
COPY data.csv .

# Default command to run the script
CMD ["python", "run.py"]