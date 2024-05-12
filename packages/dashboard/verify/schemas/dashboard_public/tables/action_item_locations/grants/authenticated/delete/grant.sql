-- Verify: schemas/dashboard_public/tables/action_item_locations/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_item_locations', 'delete', 'authenticated');
COMMIT;  

