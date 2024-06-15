FROM python:3.11-slim

# Copy the application code
RUN mkdir db-management-api
COPY db_management_api db-management-api/db_management_api

WORKDIR db-management-api


# Copy requirements file
COPY requirements.txt requirements.txt


# Install dependencies
RUN pip install --no-cache-dir --no-compile -r requirements.txt

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD ["uvicorn", "db_management_api.app:app", "--host", "0.0.0.0", "--port", "8080"]

# HEALTHCHECK
#HEALTHCHECK CMD curl --fail http://127.0.0.1:8000/health || exit 1
