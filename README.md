# Dockerized Scuttlebot/Patchwork Pub

1. Edit `docker-compose.yml` replacing `pub.nb5.me` with your pub domain name
1. `docker volume create --name=ssb_data`
1. `docker-compose up -d`
1. Profit!

To run any command with your pub:
```
docker-compose exec scuttlebot sbot whoami
```

