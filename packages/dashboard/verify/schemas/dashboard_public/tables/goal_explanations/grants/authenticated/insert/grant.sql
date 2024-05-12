-- Verify: schemas/dashboard_public/tables/goal_explanations/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.goal_explanations', 'insert', 'authenticated');
COMMIT;  

