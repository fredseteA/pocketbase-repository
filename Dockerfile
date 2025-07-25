FROM debian:bullseye-slim

WORKDIR /app

RUN apt-get update && apt-get install -y ca-certificates curl sqlite3 && rm -rf /var/lib/apt/lists/*

COPY pocketbase /app/pocketbase

RUN chmod +x /app/pocketbase

EXPOSE 8080

CMD ["./pocketbase", "serve", "--http=0.0.0.0:8080"]
