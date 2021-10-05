FROM ubuntu
USER root
RUN mkdir simpleApp
COPY simpleApp/* simpleApp/
COPY requirements.txt manage.py ./
WORKDIR /simpleApp

RUN apt-get update
RUN apt-get install -y python3.6 python3-pip
RUN apt-get install -y build-essential libssl-dev libffi-dev python-dev
RUN pip3 install -r requirements.txt
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
EXPOSE 8000
CMD ["python3" , "manage.py" , "runserver" , "0.0.0.0:8000"]
