-- Verify: schemas/dashboard_public/tables/user_action_reactions/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_action_reactions', 'update', 'authenticated');
COMMIT;  

