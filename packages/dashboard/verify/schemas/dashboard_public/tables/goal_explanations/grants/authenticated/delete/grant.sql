-- Verify: schemas/dashboard_public/tables/goal_explanations/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.goal_explanations', 'delete', 'authenticated');
COMMIT;  

