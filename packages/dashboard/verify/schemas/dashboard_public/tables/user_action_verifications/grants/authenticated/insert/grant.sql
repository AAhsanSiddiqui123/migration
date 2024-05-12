-- Verify: schemas/dashboard_public/tables/user_action_verifications/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_action_verifications', 'insert', 'authenticated');
COMMIT;  

