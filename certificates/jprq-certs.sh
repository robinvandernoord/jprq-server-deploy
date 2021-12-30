sudo /home/ubuntu/CERTIFICATES/venv/bin/certbot certonly \
 --preferred-challenges=dns \
 -a dns-transip \
 --dns-transip-credentials transip.ini \
 --dns-transip-propagation-seconds 240 \
 --non-interactive --agree-tos -m contact@your.email.address \
 --manual-public-ip-logging-ok \
 -d 'your.domain.tld' -d '*.your.domain.tld'
