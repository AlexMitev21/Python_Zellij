# Use an official Python runtime as a parent image
FROM python:3.8.10

# Set the working directory to /Users/amitev/Zellij-master
WORKDIR /Users/amitev/Zellij-master

# Copy the requirements.txt file to the container
COPY requirements.txt requirements.txt

# Install Python dependencies from requirements.txt
RUN pip3 install -r requirements.txt

# Copy the rest of your project files to the container
COPY . .

# Set the FLASK_APP environment variable (set this when running the container)
# ENV FLASK_APP=/Users/amitev/Zellij-master/website/main.py

# Command to run the Flask application
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
