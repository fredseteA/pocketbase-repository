FROM debian:bullseye-slim

WORKDIR /app

# Instala dependências básicas (como libsqlite3)
RUN apt-get update && apt-get install -y ca-certificates curl sqlite3 && rm -rf /var/lib/apt/lists/*

COPY pocketbase /app/pocketbase
COPY start.sh /app/start.sh

RUN chmod +x /app/pocketbase /app/start.sh

EXPOSE 8080

CMD ["./start.sh"]
