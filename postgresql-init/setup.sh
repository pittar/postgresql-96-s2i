echo "Begin database setup..."

psql -v dbuser=$DB_USER -v dbname=$DB_NAME -f /opt/app-root/src/postgresql-init/setupdb.sql
