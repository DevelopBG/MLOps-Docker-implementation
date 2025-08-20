# use an official Python runtime as a parent image
FROM python:3.8-slim

# set the working directory in the contrainer- asking to make a directory
WORKDIR /app

# copy the current directory contents into the contrainer at /app
COPY . /app

# install and needed packages specified in the requirements.txt
RUN pip isntall --no-cache-dir -r requirements.txt

#MAKE PROT 5000 AVAILABLE TO THE WORKD OUTSIDE THIS CONTAINER
EXPOSE 5000

# DEFINE ENVIRONMENT VARIABLE
ENV FLASK_APP=demo_app.python


# rund the Flask app
CMD ["flask", "run","--host=0.0.0.0"]