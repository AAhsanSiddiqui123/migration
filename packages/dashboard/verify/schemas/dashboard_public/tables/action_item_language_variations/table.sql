-- Verify: schemas/dashboard_public/tables/action_item_language_variations/table on pg

BEGIN;
SELECT verify_table('dashboard_public.action_item_language_variations');
COMMIT;  

