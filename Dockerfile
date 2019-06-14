FROM python:3.7-stretch

RUN apt-get update && apt-get install -y --no-install-recommends \
    vim \
  && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

RUN mkdir /django_project
WORKDIR /django_project
EXPOSE 8000
