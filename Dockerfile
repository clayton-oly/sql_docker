# Use a imagem base do SQL Server 2022
FROM mcr.microsoft.com/mssql/server:2022-latest

# Defina variáveis de ambiente necessárias
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=D@silva123@

# Mude para o usuário root
USER root

# Comando para iniciar o SQL Server
CMD ["/opt/mssql/bin/sqlservr"]
