helm install postgres cetic/postgresql -n kong \
--set postgresql.username=kong \
--set postgresql.password=kong \
--set postgresql.database=kong \
--set postgresql.port=5432