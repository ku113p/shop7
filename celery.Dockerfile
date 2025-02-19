FROM python:3.8
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
WORKDIR /app
COPY app /app
CMD ["celery", "-A", "app.celery", "worker", "-l", "info", "-B"]