-- Verify: schemas/dashboard_public/tables/units/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.units', 'update', 'authenticated');
COMMIT;  

