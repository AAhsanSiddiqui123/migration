-- Verify: schemas/dashboard_public/tables/goals/table on pg

BEGIN;
SELECT verify_table('dashboard_public.goals');
COMMIT;  

