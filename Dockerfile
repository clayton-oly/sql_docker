FROM mcr.microsoft.com/mssql/server:2022-latest

# Defina variáveis de ambiente necessárias
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=$(optenv SA_PASSWORD "D@silva123@")

# Crie um usuário não-root
RUN useradd -m -s /bin/bash sqluser
USER sqluser

# Configure permissões para o usuário sqluser
RUN chown -R sqluser:sqluser /var/opt/mssql

# Copie scripts de inicialização (se necessário)
# COPY startup.sh /startup.sh
# RUN chmod +x /startup.sh

# Comando para iniciar o SQL Server
CMD ["/opt/mssql/bin/sqlservr"]
