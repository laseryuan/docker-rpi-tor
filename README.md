# Usage
Prepare data volume to persist config data:
```
docker volume create tor-data
```

Start the service:
```
docker run -d --name=tor --restart=always -v tor-data:/var/lib/tor --network=host lasery/rpi-tor tor
```

Get the service domain name:
```
docker exec tor cat /var/lib/tor/hidden_service/hostname
```

SSH to the host:
```
torsocks ssh -p 8022 [hostname].onion
```

# Development
docker build -t lasery/rpi-tor .  
docker push lasery/rpi-tor  
