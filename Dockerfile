# Step 1: Use an official Python runtime as the base image
FROM python:3.9-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container at /app
COPY . /app

# Step 4: Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade flask werkzeug

# Step 5: Make port 5000 available to the world outside this container
EXPOSE 5000

# Step 6: Define environment variable for Flask
ENV FLASK_APP=app.py
ENV FLASK_ENV=development

# Step 7: Run the application
CMD ["flask", "run", "--host=0.0.0.0"]

