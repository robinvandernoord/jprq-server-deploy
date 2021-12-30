# jprq server deploy

[![GitHub](https://img.shields.io/static/v1?style=for-the-badge&message=GitHub&color=181717&logo=GitHub&logoColor=FFFFFF&label=)](https://github.com/robinvandernoord/jprq-server-deploy/edit/master/README.md)


This repository contains example deployment files for self-hosting jprq.

## Tools used

- [jprq](https://github.com/azimjohn/jprq)
- [go](https://go.dev/doc/install) to build the server and client binaries (
  see [this release](https://github.com/robinvandernoord/jprq/releases/tag/1.1.0) to download binaries)
- nginx with a config based
  on [this example](https://github.com/azimjohn/jprq-python-client/issues/1#issuecomment-675040204)
- ubuntu 20.04 amd64 server on Oracle Cloud
- TransIP for the domain name
- [Let's Encrypt certbot](https://certbot.eff.org/) (`pip install certbot certbot-nginx`)
- [certbot-dns-transip](https://github.com/hsmade/certbot-dns-transip/) (`pip install certbot-dns-transip`)

## SSL certificates setup

```bash
# CERTIFICATES contains everything to do with obtaining a dns wildcard certificate
cd CERTIFICATES
ls -gGoh --time-style=+""
#  -rwxrwxr-x 1  370  jprq-certs.sh
#  -rwxrwxr-x 1  166  link-nginx-conf.sh
#  -rw-rw-r-- 1   28  requirements.txt
#  -rw------- 1 1.7K  transip-rsa.key
#  -rw------- 1   79  transip.ini
#  drwxrwxr-x 4 4.0K  venv
```

I'll go through each of the files:

##### venv, requirements.txt: virtualenv containing the required dependencies

```bash
python3 -m pip install virtualenv
python3 -m virtualenv venv
. venv/bin/activate
pip install -r requirements.txt 
```

##### transip.ini and transip-rsa.key

This ini file contains the username that owns the domain you want to request a certificate for. The key contains a
private key with access to that account (See API Settings)[https://www.transip.nl/cp/account/api/].

##### jprq-certs.sh

This script requests a wildcard certificate for the domain specified in the script

##### link-nginx-conf.sh

Links a letsencrypt config file that nginx uses to /etc/letsencrypt/

## nginx/service setup

See the 'nginx' folder for the config files in my `sites-enabled`. To use them, simply change the domain name
'your.domain.tld' to your actual domain name.

See the 'service' folder for two simple systemctl (`/etc/systemd/system/`) config files to run the two jprq servers as
services. These files also need to be updated with the actual domain name.

## (Oracle) network setup

In order for the tcp client to work, all unpriviliged ports (1024 and higher) need to be opened in the firewall.

## More info? Docker??

See also

- https://github.com/azimjohn/jprq-python-client/issues/1
- https://github.com/azimjohn/jprq/issues/58
