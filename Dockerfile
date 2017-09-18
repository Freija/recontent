FROM python:3.5
MAINTAINER Freija Descamps <freija@gmail.com>
COPY data/ /opt/app/
COPY requirements.txt /
RUN pip install -r /requirements.txt
COPY app/ /opt/app/
WORKDIR /opt/app
USER nobody
CMD gunicorn --bind 0.0.0.0:$PORT wsgi
