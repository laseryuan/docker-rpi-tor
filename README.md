# Usage
## Setup the service 
[Install Docker](http://blog.alexellis.io/getting-started-with-docker-on-raspberry-pi/) on Raspberry Pi

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

## Connect to the service
Install tor:
```
sudo apt-get install tor
```

SSH to the host:
```
torsocks ssh -p 8022 [hostname].onion
```

# Development
docker build -t lasery/rpi-tor .  
docker push lasery/rpi-tor  
