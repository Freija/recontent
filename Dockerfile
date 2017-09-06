FROM python:3.5
MAINTAINER Freija Descamps <freija@gmail.com>
EXPOSE 5000
COPY requirements.txt /
RUN pip install -r /requirements.txt
COPY app/ ./app/
WORKDIR /data
USER nobody
ENTRYPOINT ["python", "../app/app.py"]
