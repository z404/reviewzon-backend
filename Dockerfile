# dockerfile for FastAPI app
# Version 1.0
FROM python:3.6

# set a directory for the app
WORKDIR /app

# copy all the files to the container
COPY . /app

# install dependencies
RUN pip install -r requirements.txt

# tell the port number the container should expose
EXPOSE 8000

# run the command
CMD ["python3", "app.py"]