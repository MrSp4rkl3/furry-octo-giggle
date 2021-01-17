#!/bin/sh
echo "Plexing now..."

export API_TOKEN_CLEAN=qzzCv5bMQHsy_zihsM74
export API_TOKEN_OPAQUE=$(echo -n ${API_TOKEN_CLEAN} | base64)

cat README.md
kubectl apply -f ns-plex.yaml
kubectl apply -f secret-plex.yaml
kubectl apply -f pv-plex-config.yaml
kubectl apply -f pv-plex-media.yaml
kubectl apply -f service-tcp-plex.yaml
kubectl apply -f deployment-plex.yaml

echo "done the Plex"
