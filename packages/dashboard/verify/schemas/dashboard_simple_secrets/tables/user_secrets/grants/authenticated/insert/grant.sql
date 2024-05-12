-- Verify: schemas/dashboard_simple_secrets/tables/user_secrets/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_simple_secrets.user_secrets', 'insert', 'authenticated');
COMMIT;  

