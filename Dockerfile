
FROM node:22-alpine

WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar dependencias considerando los peer dependencies
RUN npm install --legacy-peer-deps

# Copiar código del frontend
COPY . .

# Puerto de Vite
EXPOSE 5173

# Ejecutar Vite en modo desarrollo
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
