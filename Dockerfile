FROM apache/airflow:2.2.4

USER root

RUN apt update && apt -y install build-essential gcc unixodbc-dev && apt -y clean all

USER airflow

ADD requirements/requirements.txt .

RUN /usr/local/bin/python -m pip install --upgrade pip \
    && /usr/local/bin/python -m pip install -r requirements.txt


