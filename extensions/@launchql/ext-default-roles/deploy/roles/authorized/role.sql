-- Deploy roles/authorized/role to pg


BEGIN;
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT
            1
        FROM
            pg_roles
        WHERE
            rolname = 'authorized') THEN
    CREATE ROLE authorized;
    COMMENT ON ROLE authorized IS 'authorized group';
    ALTER USER authorized WITH NOCREATEDB;
    ALTER USER authorized WITH NOCREATEROLE;
    ALTER USER authorized WITH NOLOGIN;
    ALTER USER authorized WITH BYPASSRLS;
    GRANT authorized TO app_admin;

END IF;
END
$$;
COMMIT;
