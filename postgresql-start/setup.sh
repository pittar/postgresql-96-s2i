echo "Begin database setup..."

psql -v dbuser=$DATABASE_USER -v dbpassword=$DATABASE_PASSWORD -v dbname=$POSTGRESQL_DATABASE -v dbadmin=$POSTGRESQL_USER -f /opt/app-root/src/postgresql-start/setupdb.sql
