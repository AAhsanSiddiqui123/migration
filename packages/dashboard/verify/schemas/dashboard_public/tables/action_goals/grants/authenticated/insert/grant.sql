-- Verify: schemas/dashboard_public/tables/action_goals/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_goals', 'insert', 'authenticated');
COMMIT;  

