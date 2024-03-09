# Use an official Python runtime as a parent image
FROM python:3.12

# Set environment variables
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE creditmanager.settings

# Set the working directory in the container
WORKDIR /code

# Copy the current directory contents into the container at /code
COPY . /code/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Expose the port on which your Django app will run
EXPOSE 8000

# Run Django application
CMD ["gunicorn", "creditmanager.wsgi:application", "--bind", "0.0.0.0:8000"]
