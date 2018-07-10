echo "Begin database setup..."

psql -v dbuser=$POSTGRESQL_USER -v dbname=$POSTGRESQL_DATABASE -f /opt/app-root/src/postgresql-init/setupdb.sql
