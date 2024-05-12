-- Verify: schemas/dashboard_public/tables/user_viewed_actions/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_viewed_actions', 'delete', 'authenticated');
COMMIT;  

