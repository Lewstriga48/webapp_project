FROM python:3.8

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt
RUN pip install Flask Flask-SQLAlchemy
RUN pip install Flask Flask-SQLAlchemy Flask-Migrate
RUN apt-get update && apt-get install -y netcat-openbsd



COPY . .
COPY . /app

RUN chmod +x /app/entrypoint.sh
CMD ["/app/entrypoint.sh"]

