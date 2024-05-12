-- Verify: schemas/dashboard_public/tables/goals/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.goals', 'delete', 'authenticated');
COMMIT;  

