-- Verify: schemas/dashboard_public/tables/user_locations/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_locations');
COMMIT;  

