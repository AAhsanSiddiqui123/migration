-- Verify: schemas/dashboard_public/tables/goals/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.goals', 'update', 'authenticated');
COMMIT;  

