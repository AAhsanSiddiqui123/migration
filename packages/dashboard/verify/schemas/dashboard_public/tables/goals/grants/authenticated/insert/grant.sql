-- Verify: schemas/dashboard_public/tables/goals/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.goals', 'insert', 'authenticated');
COMMIT;  

