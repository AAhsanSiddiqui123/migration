-- Verify: schemas/dashboard_public/tables/user_connections/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_connections', 'insert', 'authenticated');
COMMIT;  

