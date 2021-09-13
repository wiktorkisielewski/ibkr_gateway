# InteractiveBrokers Gateway
This project allows to run IBKR Gateway headless in docker.

You can run data collecting programs or trading algorithms with IBKR API's without any GUI.

## Run
If you wish to use this, just clone this repo:

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

You can get <HOST_IP_ADDRESS> with:

```
curl ifconfig.me
```

or many other ways
## Configuration
By default access to Gateway is disabled, thi scan be changed by configuring:
> gateway/ip_list

Insert as many `IPs` as you need, line by line. This repo contains template of this file and should be changed!

