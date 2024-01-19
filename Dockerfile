FROM python:3-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /projeto

COPY requirements.txt /projeto/

RUN pip3 install -r requirements.txt

COPY . /projeto/

RUN chmod +x /projeto/start.sh


