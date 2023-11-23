#!/bin/bash

# Membaut Docker image untuk frontend
docker build -t ghcr.io/sieggo/a433-microservices/karsajobs-ui:latest .

# Login ke GitHub Container Registry (GHCR) dengan menggunakan Personal Access Token (PAT)
docker login ghcr.io -u sieggo -p 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

# Mengunggah image ke GitHub Container Registry
docker push ghcr.io/sieggo/a433-microservices/karsajobs-ui:latest
