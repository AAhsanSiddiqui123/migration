-- Verify: schemas/dashboard_public/tables/action_items/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_items', 'delete', 'authenticated');
COMMIT;  

