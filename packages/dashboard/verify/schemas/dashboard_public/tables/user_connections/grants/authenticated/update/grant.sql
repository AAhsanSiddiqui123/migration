-- Verify: schemas/dashboard_public/tables/user_connections/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_connections', 'update', 'authenticated');
COMMIT;  

