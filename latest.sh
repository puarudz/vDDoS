#!/bin/bash
/usr/bin/curl -L https://github.com/puarudz/vDDoS/raw/master/vddos-2.3.3.tar.gz -o vddos-2.3.3.tar.gz

tar -xvf vddos-2.3.3.tar.gz >/dev/null 2>&1
cd vddos-2.3.3
chmod 755 -R *.sh  >/dev/null 2>&1
chmod 755 -R */*.sh  >/dev/null 2>&1
./install.sh

if [ -f /vddos/vddos ]; then

	curl -L https://github.com/duy13/vDDoS-Layer4-Mapping/raw/master/vddos-layer4-mapping -o /usr/bin/vddos-layer4
	chmod 700 /usr/bin/vddos-layer4

	echo 'Install vDDoS Proxy Protection Done!'

	/root/.acme.sh/acme.sh --set-default-ca  --server  letsencrypt >/dev/null 2>&1
	exit 0
else
	echo 'Install vDDoS Proxy Protection Failed!'
	exit 1
fi
