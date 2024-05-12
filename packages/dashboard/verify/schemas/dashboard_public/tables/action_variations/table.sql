-- Verify: schemas/dashboard_public/tables/action_variations/table on pg

BEGIN;
SELECT verify_table('dashboard_public.action_variations');
COMMIT;  

