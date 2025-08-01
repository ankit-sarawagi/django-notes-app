# Use a stable Python version
FROM python:3.9

# Set working directory
WORKDIR /app/backend

# Copy requirements and upgrade pip
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the rest of the app
COPY . .

# Expose Django's default port
EXPOSE 8000

# Run Django server
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

