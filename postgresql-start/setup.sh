echo "Begin database setup..."

echo ""
echo "dbuser:     $DB_USERNAME"
echo "dbpassword: $DB_PASSWORD" 
echo "dbname:     $POSTGRESQL_DATABASE"
echo "dbadmin:    $POSTGRESQL_USER"
echo ""

sed -i -e "s/:dbpassword/$DB_PASSWORD/g" setupdb.sql

psql -v dbuser=$DB_USERNAME \
     -v dbpassword=$DB_PASSWORD \
     -v dbname=$POSTGRESQL_DATABASE \
     -v dbadmin=$POSTGRESQL_USER \
     -f /opt/app-root/src/postgresql-start/setupdb.sql
     
