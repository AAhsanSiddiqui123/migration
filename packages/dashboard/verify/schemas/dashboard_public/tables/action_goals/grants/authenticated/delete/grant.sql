-- Verify: schemas/dashboard_public/tables/action_goals/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_goals', 'delete', 'authenticated');
COMMIT;  

