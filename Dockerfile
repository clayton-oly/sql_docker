FROM mcr.microsoft.com/mssql/server:2022-latest

# Definindo variáveis de ambiente para aceitar a EULA e definir a senha do SA
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=${SA_PASSWORD:-"D@silva123@"}

# Expondo a porta padrão do SQL Server
EXPOSE 1433

# Volume para persistência de dados
VOLUME /var/opt/mssql

# Comando para iniciar o SQL Server
CMD ["/opt/mssql/bin/sqlservr"]
