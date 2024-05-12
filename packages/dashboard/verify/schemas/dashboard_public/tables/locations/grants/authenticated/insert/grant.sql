-- Verify: schemas/dashboard_public/tables/locations/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.locations', 'insert', 'authenticated');
COMMIT;  

