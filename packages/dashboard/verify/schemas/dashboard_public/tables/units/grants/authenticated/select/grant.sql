-- Verify: schemas/dashboard_public/tables/units/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.units', 'select', 'authenticated');
COMMIT;  

