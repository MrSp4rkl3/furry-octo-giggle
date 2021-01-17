#!/bin/sh

echo "killing Plex"

kubectl delete namespace plex
kubectl delete persistentvolume plex-pv-config-volume
kubectl delete persistentvolume plex-pv-media-volume

echo "Plex is gone"

