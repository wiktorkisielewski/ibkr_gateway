# InteractiveBrokers Gateway
This project allows to run IBKR Gateway headless, while being able to authenticate on the go from any device with internet access.

Authentication is made through the internet browser (password login and 2FA), device used to authenictae needs to have `IP address` whitelisted by user.

You can run data collecting programs, trading algorithms or use IBKR API's in any other way without having to deal with `GUI`.

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
You can get your <HOST_IP_ADDRESS> with for example: `curl ifconfig.me` or many other ways

## Configuration
By default access to Gateway is disabled, this can be changed by configuring file:
> path: gateway/ip_list

Insert as many `IPs` as you need, line by line. This repo contains template of this file, that should be changed.

## Security
This is a simplified implementation, and it should be secured as good as possible.
`HTTPS` cominitcation shoudl be encrypted with a certificate, it would be best to use this in a isolated network.
Strict FW rules are adviced, preferably only port `80` is exposed outside the host.
</br>
</br>
##### Disclousure
I am not affiliated in any way with Interactive Brokers. This software is free to use, provided "as is" without warranty of any kind.
