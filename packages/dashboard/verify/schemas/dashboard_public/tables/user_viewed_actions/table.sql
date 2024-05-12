-- Verify: schemas/dashboard_public/tables/user_viewed_actions/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_viewed_actions');
COMMIT;  

