-- Verify: schemas/dashboard_public/tables/action_item_types/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_item_types', 'insert', 'authenticated');
COMMIT;  

