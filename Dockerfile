FROM ubuntu:latest
RUN apt-get update -qq
RUN apt-get install -y build-essential python3.6 python3-pip
COPY . /simpleApp
WORKDIR /simpleApp
RUN pip3 install -r requirements.txt
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate 
EXPOSE 8000
CMD [ "python3","manage.py","runserver","0.0.0.0:8000" ]
