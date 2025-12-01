# Imagen base ligera
FROM python:3.11-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos archivos de la app
COPY . .

# Instalamos dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponemos el puerto en el que corre Flask
EXPOSE 5000

# Comando que ejecute la app
CMD ["python", "app.py"]
