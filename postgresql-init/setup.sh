echo "Begin database setup..."

psql -v dbuser=$DB_USER -v dbname=$DB_NAME -f setupdb.sql
