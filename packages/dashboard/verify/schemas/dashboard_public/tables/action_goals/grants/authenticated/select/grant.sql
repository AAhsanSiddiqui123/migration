-- Verify: schemas/dashboard_public/tables/action_goals/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_goals', 'select', 'authenticated');
COMMIT;  

