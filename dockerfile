# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el contenido de tu proyecto al contenedor
COPY . .

# Instala las dependencias
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expone el puerto que Rasa usa por defecto
EXPOSE 5005

# Configura el comando para ejecutar Rasa al iniciar el contenedor
CMD ["rasa", "run", "--enable-api", "--cors", "*"]