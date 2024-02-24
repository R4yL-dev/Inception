#!/bin/sh

if [ ! -f /var/ssl/main.key ] || [ ! -f /var/ssl/main.crt ]; then
	openssl req \
	-x509 \
	-nodes \
	-days "$CERT_VALIDITY_TIME" \
	-newkey rsa:"$CERT_KEY_SIZE" \
	-keyout /var/ssl/main.key \
	-out /var/ssl/main.crt \
	-subj $CERT_SUBJECT
fi

sleep infinity
