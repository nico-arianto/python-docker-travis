FROM python:2.7-onbuild

LABEL maintainer "nico.arianto@gmail.com"

RUN rm -rf ./testspytes

EXPOSE 8080

CMD ["python","website/manage.py","runserver","0.0.0.0:8080"]
