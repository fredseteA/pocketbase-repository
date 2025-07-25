#!/bin/sh
# Usa a porta que o Railway injeta (PORT) ou 8080 localmente
PORT=${PORT:-8080}

# Sobe o PocketBase escutando em 0.0.0.0 para aceitar conexões externas
exec ./pocketbase serve --http=0.0.0.0:${PORT}
