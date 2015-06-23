# docker-rabbitmq


Build
```
docker build -t telminov/rabbitmq .
```

Run interactive
```
docker run -ti --rm --name=rabbitmq -h rabbitmq -p 5672:5672 -p 15672:15672 -v /var/docker/rabbitmq/data:/var/lib/rabbitmq/ telminov/rabbitmq
```

Daemon
```
docker run -d --name=rabbitmq -h rabbitmq -p 5672:5672 -p 15672:15672 -v /var/docker/rabbitmq/data:/var/lib/rabbitmq/ telminov/rabbitmq
```
