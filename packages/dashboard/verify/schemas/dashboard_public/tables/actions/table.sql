-- Verify: schemas/dashboard_public/tables/actions/table on pg

BEGIN;
SELECT verify_table('dashboard_public.actions');
COMMIT;  

