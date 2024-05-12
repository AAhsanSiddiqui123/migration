-- Verify: schemas/dashboard_public/tables/user_location_types/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_location_types');
COMMIT;  

