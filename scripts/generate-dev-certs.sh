#!/bin/bash

openssl req -x509 -newkey rsa:2048 -nodes \
  -keyout ../ssl/private.key -out ../ssl/cert.crt \
  -days 365 -subj "/CN=localhost"
  