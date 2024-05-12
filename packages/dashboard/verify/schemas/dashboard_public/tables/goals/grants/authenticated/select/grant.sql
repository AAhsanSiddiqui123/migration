-- Verify: schemas/dashboard_public/tables/goals/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.goals', 'select', 'authenticated');
COMMIT;  

