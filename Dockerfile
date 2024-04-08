FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor.
WORKDIR /app

# Copia todos los archivos del directorio actual al directorio de trabajo del contenedor.
COPY . .

# Instala las dependencias del proyecto utilizando Yarn en modo producción.
RUN yarn install --production

# Define el comando predeterminado que se ejecutará cuando se inicie el contenedor.
CMD ["node", "index.js"]

# Expone el puerto 3000 del contenedor para que pueda ser accesible desde fuera.
EXPOSE 3000
