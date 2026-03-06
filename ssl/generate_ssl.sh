    #!/bin/bash

mkdir -p certs

openssl req -x509 -nodes -days 365 \
-newkey rsa:2048 \
-keyout certs/key.pem \
-out certs/cert.pem \
-subj "/C=EG/ST=Cairo/L=Cairo/O=DevOps/CN=localhost"