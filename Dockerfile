# ------------------------
# DESARROLLO
# ------------------------
# Imagen base con Python 3
FROM python:3.9-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiar los archivos de requisitos
COPY /flask_docker/requirements.txt /app/

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código de la aplicación
COPY /flask_docker/. /app/

# Exponer el puerto donde se ejecutará la aplicación Flask
EXPOSE 5000

# Comando para ejecutar la aplicación Flask
CMD ["python", "app.py"]