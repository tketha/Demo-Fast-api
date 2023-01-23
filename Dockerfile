# Use an official Python runtime as a parent image
FROM python:3.7

# Set the working directory to /app
WORKDIR /MFlowAsyncTraining

# Copy the current directory contents into the container at /app
#COPY . /MFlowAsyncTraining
COPY ./requirements.txt /MFlowAsyncTraining/requirements.txt

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

COPY . /MFlowAsyncTraining

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
#ENV NAME World
ENV PYTHONWARNINGS="ignore"

# Run api when the container launches
CMD ["uvicorn", "run:app", "--host", "0.0.0.0", "--port", "80"]