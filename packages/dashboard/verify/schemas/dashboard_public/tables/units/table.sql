-- Verify: schemas/dashboard_public/tables/units/table on pg

BEGIN;
SELECT verify_table('dashboard_public.units');
COMMIT;  

