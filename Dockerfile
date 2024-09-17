# Dockerfile
FROM python:3.12-slim

# Allows docker to cache installed dependencies between builds
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Mounts the application code to the image
COPY . /app
WORKDIR /app

# runs the production server
CMD ["gunicorn", "core.wsgi"]