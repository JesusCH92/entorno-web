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