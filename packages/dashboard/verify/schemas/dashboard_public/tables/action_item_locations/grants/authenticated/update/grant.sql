-- Verify: schemas/dashboard_public/tables/action_item_locations/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_item_locations', 'update', 'authenticated');
COMMIT;  

