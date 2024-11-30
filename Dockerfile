# Use a imagem oficial do Python
FROM python:3.11-slim

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo de requisitos para o contêiner (se você tiver um)
COPY app/requirements.txt .

# Instale as dependências do pip (se você tiver um arquivo requirements.txt)
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Caso você precise instalar diretamente o pacote outsystems-pipeline
RUN pip install --no-cache-dir outsystems-pipeline

# Copie todo o código fonte para dentro do contêiner
COPY . .

# Defina o comando a ser executado ao rodar o contêiner
CMD ["python"]
