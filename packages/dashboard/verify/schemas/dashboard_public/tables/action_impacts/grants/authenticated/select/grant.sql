-- Verify: schemas/dashboard_public/tables/action_impacts/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_impacts', 'select', 'authenticated');
COMMIT;  

