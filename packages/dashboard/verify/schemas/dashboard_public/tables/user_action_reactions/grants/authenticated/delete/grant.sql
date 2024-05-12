-- Verify: schemas/dashboard_public/tables/user_action_reactions/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_action_reactions', 'delete', 'authenticated');
COMMIT;  

