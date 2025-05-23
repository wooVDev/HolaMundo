# Usa imagen base de Python
FROM python:3.11-slim

# Instala Git y dependencias
RUN apt-get update && apt-get install -y git

# Clona el repositorio (reemplaza con el tuyo)
RUN git clone https://github.com/TuUsuario/HolaMundo.git /app

# Establece el directorio de trabajo
WORKDIR /app

# Instala dependencias
RUN pip install --upgrade pip && pip install -r requirements.txt

# Expone el puerto 8000
EXPOSE 8000

# Comando por defecto
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
