-- Verify: schemas/dashboard_public/tables/action_language_variations/table on pg

BEGIN;
SELECT verify_table('dashboard_public.action_language_variations');
COMMIT;  

