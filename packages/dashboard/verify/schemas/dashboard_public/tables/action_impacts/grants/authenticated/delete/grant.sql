-- Verify: schemas/dashboard_public/tables/action_impacts/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_impacts', 'delete', 'authenticated');
COMMIT;  

