echo "Begin database setup..."

psql -v dbuser=$DB_USERNAME \
     -v dbpassword=$DB_PASSWORD \
     -v dbname=$DB_USERNAME \
     -v dbadmin=postgres \
     -f /opt/app-root/src/postgresql-start/setupdb.sql
