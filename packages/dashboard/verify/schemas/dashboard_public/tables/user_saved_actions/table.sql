-- Verify: schemas/dashboard_public/tables/user_saved_actions/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_saved_actions');
COMMIT;  

