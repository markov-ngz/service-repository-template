FROM python:3.11-slim

COPY ./requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY ./main.py main.py

CMD ["gunicorn","--bind","0.0.0.0:5000","main:app"]