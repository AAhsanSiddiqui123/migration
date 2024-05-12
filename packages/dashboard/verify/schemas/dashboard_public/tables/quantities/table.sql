-- Verify: schemas/dashboard_public/tables/quantities/table on pg

BEGIN;
SELECT verify_table('dashboard_public.quantities');
COMMIT;  

