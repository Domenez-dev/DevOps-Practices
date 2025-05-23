FROM python:3.13.3-alpine3.20

WORKDIR /app

# Install system dependencies
RUN apk add --no-cache \
    gcc \
    musl-dev \
    python3-dev \
    libc-dev \
    linux-headers

# Upgrade pip
RUN python -m pip install --upgrade pip

# Copy requirements first for better caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

EXPOSE 5050

# Explicitly set host and port for Flask
CMD ["python", "./app.py"]
