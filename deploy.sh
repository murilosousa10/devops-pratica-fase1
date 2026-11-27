#!/bin/bash
set -e

echo "Iniciando deploy da aplicação..."
docker compose down
docker compose up -d --build
echo "Deploy concluído. Containers em execução:"
docker ps
