# jprq-server-deploy
Deployment Information for self hosting jprq

## Tools used
- [jprq](https://github.com/robinvandernoord/jprq)
- [go](https://go.dev/doc/install) to build the server and client binaries (see [this release](https://github.com/robinvandernoord/jprq/releases/tag/1.1.0) to download binaries)
- nginx with a config based on [this example](https://github.com/azimjohn/jprq-python-client/issues/1#issuecomment-675040204)
- ubuntu 20.04 amd64 server on Oracle Cloud
- TransIP for the domain name
- [Let's Encrypt certbot](https://certbot.eff.org/) (`pip install certbot certbot-nginx`)
- [certbot-dns-transip](https://github.com/hsmade/certbot-dns-transip/) (`pip install certbot-dns-transip`)

## SSL setup

## nginx setup

## Oracle network setup

## More info? Docker??
See also 
- https://github.com/azimjohn/jprq-python-client/issues/1
- https://github.com/azimjohn/jprq/issues/58
