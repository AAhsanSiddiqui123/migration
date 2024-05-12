-- Verify: schemas/dashboard_public/tables/user_action_item_verifications/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_action_item_verifications', 'update', 'authenticated');
COMMIT;  

