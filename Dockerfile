# Use a imagem base do SQL Server 2022
FROM mcr.microsoft.com/mssql/server:2022-latest

# Defina variáveis de ambiente necessárias
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=YourStrong!Passw0rd123

# Certifique-se de que o arquivo sqlservr é executável
RUN chmod +x /opt/mssql/bin/sqlservr

# Mude para o usuário mssql
USER mssql

# Comando para iniciar o SQL Server
CMD ["/opt/mssql/bin/sqlservr"]
