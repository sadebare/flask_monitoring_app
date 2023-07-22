#base image
FROM python:3.9-slim-buster

#Set working directory
WORKDIR /app

#copy requirements and depencies
COPY requirements.txt .

#install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

#copy the code base
COPY . .

#set encironment variable to run flask app
ENV FLASK_RUN_HOST=0.0.0.0

#expose port 5000
EXPOSE 5000


#start the flask app
CMD ["flask", "run"]
