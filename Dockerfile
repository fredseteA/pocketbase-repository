# Imagem base mínima
FROM alpine:latest

# Cria diretório de trabalho
WORKDIR /app

# Copia o binário Linux do PocketBase para dentro do container
# (renomeie seu binário para “pocketbase” — sem .exe)
COPY pocketbase .

# Garante permissão de execução
RUN chmod +x /app/pocketbase

# (Opcional) copie pb_data se já quiser levar dados/coleções iniciais
# COPY pb_data ./pb_data

# Copia o script de inicialização
COPY start.sh .
RUN chmod +x /app/start.sh

# A porta que o Railway expõe por padrão
ENV PORT 8080
EXPOSE 8080

# Comando de start
CMD ["./start.sh"]
