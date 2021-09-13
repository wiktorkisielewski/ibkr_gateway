# InteractiveBrokers Gateway
This project allows to run IBKR Gateway headless in the docker container.

You can run data collecting programs, trading algorithms or use IBKR API's in any way without `GUI`.
Authentication is made through the internet browser (password login and 2FA), accesible from the list of provided `IP` addresses.

## PREREQUISITS
```
docker version 20.10.7 [tested on version, others may also work]
docker-compose version 3
```
## Run
If you wish to use this, feel free to clone this repo:

```
git clone git@github.com:wiktorkisielewski/ibkr_gateway.git
```

configure `gateway/ip_list` file (datails bellow), and run with:

```
docker-compose up -d
```

This will create a container exposed at port `:80`, then you can access it in any internet browser at:
> <HOST_IP_ADDRESS>:80

It handles login/password and the 2FA authentication.

You should login in browser and see 'Client login succeeds'

Example request:
```
curl https://<YOUR_IP_ADDRESS>:80/v1/api/tickle -k 
```
or
```
curl https://$(curl ifconfig.me):80/v1/api/tickle -k 
```
You can get your <HOST_IP_ADDRESS> with: `curl ifconfig.me`

or many other ways
## Configuration
By default access to Gateway is disabled, this can be changed by configuring file:
> path: gateway/ip_list

Insert as many `IPs` as you need, line by line. This repo contains template of this file, that should be changed.

You should also secure `https` with cerificate, it is safest to make API calls from the same host.

##### Disclousre
I am not affiliated in any way with Interactive Brokers. This software is free to use, provided "as is" without warranty of any kind.
