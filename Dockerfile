FROM python:3.8.13-slim-buster

COPY . /app

WORKDIR /app

RUN pip3 install --upgrade pip --no-cache-dir 

RUN pip3 install -r /app/requirements.txt

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "dk8s.wsgi:application"]
