# syntax=docker/dockerfile:1

# ─────────────────────────────────────────────────────────────
# Imagen de DESARROLLO: monta el código por volumen (hot-reload)
# ─────────────────────────────────────────────────────────────
FROM node:22-alpine AS dev
WORKDIR /app

# Instala dependencias primero para aprovechar la caché de capas.
COPY package.json package-lock.json* ./
RUN npm install

# El código se monta por volumen en docker-compose; este COPY
# solo sirve como respaldo si se construye sin volumen.
COPY . .

EXPOSE 3000
CMD ["npm", "run", "dev"]
