# Create .env file for config docker
```
$ cp .env.example .env
```

# Config DB in .env
```
DB_CONNECTION=mysql
DB_HOST=hackfest-db
DB_PORT=3310
DB_DATABASE=HackfestDB
DB_USERNAME=admin
DB_PASSWORD=Hackfest
```

# Create Network
```
docker network create springboot-app-network
```

# Docker
```
$ docker-compose -f docker-compose.yml up --build
```

# Composer install
```
$ docker-compose exec app composer install
```

# Update code & rerun:
```
$ docker restart springboot-docker-container
```

# Access api site in local
```
http://localhost:8085/api/v1
username: admin
password: admin
```