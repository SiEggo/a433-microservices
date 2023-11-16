#!/bin/bash

# Membuat Docker image
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Login ke GitHub Container Registry (GHCR) dengan menggunakan Personal Access Token (PAT)
docker login ghcr.io -u sieggo -p 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

# Mengganti nama image agar sesuai dengan format GHCR
docker tag item-app:v1 ghcr.io/sieggo/a433-microservices/item-app:v1

# Mengunggah image ke GitHub Container Registry
docker push ghcr.io/sieggo/a433-microservices/item-app:v1