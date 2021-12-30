#!/usr/bin/bash
# I have stored this script in /usr/bin/jprq so the command is in my path

if [[ "$*" == *tcp* ]]
# if tcp exist in the arguments, change host to tcp host
then
    host=tcp.your.domain.tld # changeme to your domain
else
# default = wildcard host
    host=your.domain.tld # changeme to your domain
fi

# changeme: change the path to your binary executable
/path/to/jprq/bin/jprq-linux-amd64 --host $host $@
