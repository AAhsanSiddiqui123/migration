-- Verify: schemas/dashboard_public/tables/action_status_types/table on pg

BEGIN;
SELECT verify_table('dashboard_public.action_status_types');
COMMIT;  

