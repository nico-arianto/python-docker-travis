FROM python:2.7

LABEL maintainer "nico.arianto@gmail.com"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p website
COPY ./website/ ./website/

EXPOSE 8080

CMD ["python","website/manage.py","runserver","0.0.0.0:8080"]
