# Use a imagem base Python 3.8 slim buster
FROM python:3.8-slim-buster

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copie o código da sua aplicação para o contêiner
COPY . /app

# Instale as dependências da sua aplicação (se houver um arquivo requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Exponha a porta 80 para tráfego HTTP
EXPOSE 80

# Comando para iniciar a aplicação
CMD ["python", "app.py"]
