# Web Singular Quantum AI

Proyecto base con **Next.js 16.2** (App Router + TypeScript) preparado para
desarrollarse dentro de Docker con volumen montado para edición en caliente.

## Requisitos

- Docker + Docker Compose

No necesitas tener Node instalado localmente: todo corre en el contenedor.

## Arrancar en desarrollo

```bash
docker compose up --build
```

Abre <http://localhost:3000>.

El código está montado por volumen (`.:/app`), así que cualquier cambio que
guardes en `app/` se recarga automáticamente gracias al hot-reload de Next.js.

Para detener:

```bash
docker compose down
```

## Estructura

```
app/
  layout.tsx     # Layout raíz
  page.tsx       # Página principal
  globals.css    # Estilos globales
Dockerfile         # Imagen de desarrollo (target: dev)
docker-compose.yml # Servicio web + volúmenes
next.config.ts     # output: standalone (listo para producción)
```

## Notas

- `WATCHPACK_POLLING=true` está activado para que el hot-reload funcione con
  archivos montados por volumen en macOS/Windows.
- Los volúmenes anónimos `/app/node_modules` y `/app/.next` evitan que el
  contenido del host pise el del contenedor.
- Si añades dependencias (cambias `package.json`), reconstruye la imagen:
  `docker compose up --build`.
