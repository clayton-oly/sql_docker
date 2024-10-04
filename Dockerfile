# Usar a imagem oficial do SQL Server no Linux
FROM mcr.microsoft.com/mssql/server:2022-latest

# Definir variáveis de ambiente
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Passw0rd
ENV MSSQL_PID=Express

# Mudar permissões no binário do SQL Server
RUN chmod +x /opt/mssql/bin/sqlservr

# Expor a porta padrão do SQL Server
EXPOSE 1433

# Rodar o SQL Server
CMD /opt/mssql/bin/sqlservr
