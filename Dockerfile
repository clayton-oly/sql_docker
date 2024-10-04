# Usar a imagem oficial do SQL Server no Linux
FROM mcr.microsoft.com/mssql/server:2022-latest

# Definir variáveis de ambiente
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=YourStrong!Passw0rd123
ENV MSSQL_PID=Express

# Executar como root
USER root

# Mudar permissões no binário do SQL Server (se necessário)
RUN chmod +x /opt/mssql/bin/sqlservr

# Expor a porta padrão do SQL Server
EXPOSE 1433

# Rodar o SQL Server como o usuário mssql (volta para o não-root)
USER mssql
CMD /opt/mssql/bin/sqlservr
