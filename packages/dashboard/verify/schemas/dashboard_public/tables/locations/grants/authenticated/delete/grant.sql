-- Verify: schemas/dashboard_public/tables/locations/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.locations', 'delete', 'authenticated');
COMMIT;  

