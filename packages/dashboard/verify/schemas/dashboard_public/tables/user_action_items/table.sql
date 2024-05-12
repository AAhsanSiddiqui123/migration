-- Verify: schemas/dashboard_public/tables/user_action_items/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_action_items');
COMMIT;  

