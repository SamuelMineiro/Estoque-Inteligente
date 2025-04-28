FROM python:3.13.3

WORKDIR /app

COPY . .

RUN pip install --upgrade pip && pip install --upgrade -r requirements.txt

ENV PYTHONUNBUFFERED=1
ENV PORT=8000

EXPOSE 8000

CMD python manage.py migrate && gunicorn project.wsgi:application --bind 0.0.0.0:8000
