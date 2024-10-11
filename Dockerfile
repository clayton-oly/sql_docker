FROM mcr.microsoft.com/mssql/server:2022-latest

# Definindo variáveis de ambiente de forma segura
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=${SA_PASSWORD:-"D@silva123@"}

# Criando um volume para o /etc/passwd
VOLUME /etc/passwd

# Criando um usuário não-root
USER root
RUN useradd -m -s /bin/bash sqluser
USER sqluser

# Configurando permissões para o usuário sqluser
RUN chown -R sqluser:sqluser /var/opt/mssql

# Copiando scripts de inicialização (opcional)
# COPY startup.sh /startup.sh
# RUN chmod +x /startup.sh

# Comando para iniciar o SQL Server
CMD ["/opt/mssql/bin/sqlservr"]
