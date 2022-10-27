# dockerfile for FastAPI app
# Version 1.0
FROM python:3.10

# set a directory for the app
WORKDIR /app

# copy only the requirements.txt first to leverage Docker cache
COPY requirements.txt requirements.txt

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY . /app/

# command to run on container start
RUN ["python3", "app.py"]
