-- Verify: schemas/dashboard_public/tables/action_item_locations/table on pg

BEGIN;
SELECT verify_table('dashboard_public.action_item_locations');
COMMIT;  

