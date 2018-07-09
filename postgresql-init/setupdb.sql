DROP DATABASE :dbuser;

CREATE DATABASE :dbname;

\c :dbname;

REVOKE CONNECT ON DATABASE :dbname FROM PUBLIC;

GRANT CONNECT
ON DATABASE :dbname
TO :dbuser;

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public 
TO :dbuser;

GRANT USAGE
ON ALL SEQUENCES IN SCHEMA public TO :dbuser;

GRANT EXECUTE
ON ALL FUNCTIONS IN SCHEMA public TO :dbuser;

ALTER DEFAULT PRIVILEGES 
    FOR USER postgres  -- Alternatively "FOR USER"
    IN SCHEMA public
    GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO :dbuser;

-- and the sequences, for INSERT to work
ALTER DEFAULT PRIVILEGES
    FOR USER postgres
    IN SCHEMA public
    GRANT USAGE ON SEQUENCES TO :dbuser;
    
-- and the functions
ALTER DEFAULT PRIVILEGES
    FOR USER postgres
    IN SCHEMA public
    GRANT EXECUTE ON FUNCTIONS TO :dbuser;
