-- Verify: schemas/dashboard_public/tables/action_items/table on pg

BEGIN;
SELECT verify_table('dashboard_public.action_items');
COMMIT;  

