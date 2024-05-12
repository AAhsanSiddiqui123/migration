-- Verify: schemas/dashboard_public/tables/user_connections/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_connections');
COMMIT;  

