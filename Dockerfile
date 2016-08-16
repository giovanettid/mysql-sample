FROM mysql:latest

COPY functional-schema.sql /docker-entrypoint-initdb.d/
COPY technical-schema.sql /docker-entrypoint-initdb.d/
COPY healthcheck.sh /healthcheck.sh

EXPOSE 3306

HEALTHCHECK --interval=3s --retries=10 CMD /healthcheck.sh

