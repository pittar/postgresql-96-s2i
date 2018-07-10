echo "Begin database setup..."

psql -v dbuser=$DATABASE_USER -v dbpassword=$DATABASE_PASSWORD -v dbname=$POSTGRESQL_DATABASE -f /opt/app-root/src/postgresql-init/setupdb.sql
