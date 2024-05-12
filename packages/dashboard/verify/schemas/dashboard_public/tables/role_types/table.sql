-- Verify: schemas/dashboard_public/tables/role_types/table on pg

BEGIN;
SELECT verify_table('dashboard_public.role_types');
COMMIT;  

