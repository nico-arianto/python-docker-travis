FROM python:2.7-onbuild

LABEL maintainer "nico.arianto@gmail.com"

RUN find . -name "*-test.txt" | xargs rm
RUN find . -name "*_test.py" | xargs rm

WORKDIR /usr/src/app/website

EXPOSE 8080

CMD ["python","manage.py","runserver","0.0.0.0:8080"]
