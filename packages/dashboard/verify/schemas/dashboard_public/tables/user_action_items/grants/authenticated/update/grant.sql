-- Verify: schemas/dashboard_public/tables/user_action_items/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_action_items', 'update', 'authenticated');
COMMIT;  

