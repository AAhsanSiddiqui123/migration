-- Verify: schemas/dashboard_public/tables/action_impacts/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_impacts', 'update', 'authenticated');
COMMIT;  

