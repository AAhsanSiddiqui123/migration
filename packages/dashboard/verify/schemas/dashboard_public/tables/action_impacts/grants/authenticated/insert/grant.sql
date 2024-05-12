-- Verify: schemas/dashboard_public/tables/action_impacts/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_impacts', 'insert', 'authenticated');
COMMIT;  

