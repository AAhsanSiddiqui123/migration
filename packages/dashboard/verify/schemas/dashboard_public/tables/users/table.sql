-- Verify: schemas/dashboard_public/tables/users/table on pg

BEGIN;
SELECT verify_table('dashboard_public.users');
COMMIT;  

