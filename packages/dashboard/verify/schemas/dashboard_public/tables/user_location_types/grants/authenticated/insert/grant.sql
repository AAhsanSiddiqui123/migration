-- Verify: schemas/dashboard_public/tables/user_location_types/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_location_types', 'insert', 'authenticated');
COMMIT;  

