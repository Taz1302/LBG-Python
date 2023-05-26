FROM python:3.6

RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get install -y python3-pip && \
    pip3 install -r requirements.txt

COPY . /app
EXPOSE 8000
ENV ENV_VAR_NAME=value
ENTRYPOINT ["python", "app.py"]
