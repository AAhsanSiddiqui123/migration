-- Verify: schemas/dashboard_public/tables/units/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.units', 'delete', 'authenticated');
COMMIT;  

