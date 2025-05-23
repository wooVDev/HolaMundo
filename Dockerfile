FROM python:3.11-slim

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/wooVDev/HolaMundo.git /app

WORKDIR /app

RUN pip install --upgrade pip && pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
