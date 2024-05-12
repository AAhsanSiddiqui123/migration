-- Verify: schemas/dashboard_public/tables/action_goals/table on pg

BEGIN;
SELECT verify_table('dashboard_public.action_goals');
COMMIT;  

