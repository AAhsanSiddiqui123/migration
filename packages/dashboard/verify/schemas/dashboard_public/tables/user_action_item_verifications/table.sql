-- Verify: schemas/dashboard_public/tables/user_action_item_verifications/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_action_item_verifications');
COMMIT;  

