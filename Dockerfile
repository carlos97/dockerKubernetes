# Dockerfile

FROM python:3.8-slim-buster

WORKDIR /app

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]


