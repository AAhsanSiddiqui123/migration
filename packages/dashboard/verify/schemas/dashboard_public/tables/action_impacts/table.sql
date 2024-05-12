-- Verify: schemas/dashboard_public/tables/action_impacts/table on pg

BEGIN;
SELECT verify_table('dashboard_public.action_impacts');
COMMIT;  

