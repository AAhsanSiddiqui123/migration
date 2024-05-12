-- Verify: schemas/dashboard_public/tables/action_locations/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.action_locations', 'select', 'authenticated');
COMMIT;  

