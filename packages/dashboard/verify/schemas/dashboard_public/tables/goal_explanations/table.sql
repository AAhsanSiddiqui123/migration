-- Verify: schemas/dashboard_public/tables/goal_explanations/table on pg

BEGIN;
SELECT verify_table('dashboard_public.goal_explanations');
COMMIT;  

