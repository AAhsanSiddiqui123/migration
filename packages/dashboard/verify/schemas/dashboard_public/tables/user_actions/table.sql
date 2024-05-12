-- Verify: schemas/dashboard_public/tables/user_actions/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_actions');
COMMIT;  

