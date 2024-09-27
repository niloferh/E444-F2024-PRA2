#FROM --platform=$BUILDPLATFORM python:3.9.13 AS builder
#FROM python:3.9.13
FROM python:3.11-slim

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=hello.py

CMD [ "flask", "run", "--host=0.0.0.0"]
#CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]