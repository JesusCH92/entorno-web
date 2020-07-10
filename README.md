## Levantar los servicios
```bash
docker-compose up -d
```

## Acceder al bash de php
```bash
docker-compose exec php bash
```

## Para ejecutar el fichero `index.php`, primero accedemos al bash de php (con el comando de arriba) y luego entramos al volumen
```bash
cd /code/
```

## Ejecutamos directamente el fichero:
```bash
php index.php
```

# Levantar un entorno en especifico (dev o prod)

## Ejecutar lo siguiente para levantar el entorno en dev:
```bash
docker-compose up -d --build
```

## Ejecutar lo siguiente para levantar el entorno en prod
```bash
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d --build
```

## Destruir el entorno
```bash
docker-compose down
```