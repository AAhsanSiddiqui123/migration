-- Verify: schemas/dashboard_public/tables/user_locations/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_locations', 'select', 'authenticated');
COMMIT;  

