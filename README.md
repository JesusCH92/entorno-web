# Objetivos:
Configurar un entorno de desarrollo con los servicios de PHP, redis y MySQL

## Requisitos:
* Docker

## Caracteristicas:
* Servicio de Redis expondrá en el Host el puerto 30001
* Servicio de MySQL expondrá en el Host el puerto 20001, el usuario será: `root`, el password: `ununoyundossontres` y el nombre la base de datos por defecto será: `db`
* Entorno de dev tiene las siguientes caracteristicas en el servicio de php:
    * max_execution_time=90
    * date.timezone=Europe/Madrid
    * memory_limit=512M
* Entorno de prod tiene las siguientes caracteristicas en el servicio de php:
    * max_execution_time=45
    * date.timezone=Europe/Madrid
    * memory_limit=256M

## Levantar los servicios de develop
```bash
docker-compose up -d --build
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

## Levantar los servicios de production
```bash
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d --build
```

## Para dar de baja los servicios (entorno de dev o prod)
```bash
docker-compose down
```

## PoC (prueba de concepto) rama **`entorno-test`**
Además de los servicios anteriores también tiene el servicio de **`nginx`** el cual levantará por defecto el fichero **`src/index.php`**
* Para acceder al PoC
```
git checkout entorno-test
```
* Levantar los servicios según el entorno
    * Dev
    ```bash
    docker-compose up -d --build
    ```
    * Prod
    ```bash
    docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d --build
    ```
* Una vez el servicio ha cargado correctamente, podrá acceder al endpoint:
```
http://localhost:8080/
```
y podrá ver desde su navegador el contenido del fichero **`src/index.php`**