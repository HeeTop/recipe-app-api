FROM python:3.7-alpine
MAINTAINER Seoul App Developer Heetop

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app
# security -> not root
RUN adduser -D user 
USER user
