#!/bin/bash

# Nama image Docker yang akan dibuat
IMAGE_NAME="ghcr.io/SiEggo/a433-microservices/item-app:v1"

# Membuat Docker image
docker build -t $IMAGE_NAME .

# Melihat daftar image di lokal
docker images

# Login ke GitHub Container Registry (GHCR) dengan menggunakan Personal Access Token (PAT)
docker login ghcr.io -u SiEggo -p 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

# Mengganti nama image agar sesuai dengan format GHCR
docker tag $IMAGE_NAME $IMAGE_NAME

# Mengunggah image ke GitHub Container Registry
docker push $IMAGE_NAME