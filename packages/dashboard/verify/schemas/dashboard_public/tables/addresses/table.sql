-- Verify: schemas/dashboard_public/tables/addresses/table on pg

BEGIN;
SELECT verify_table('dashboard_public.addresses');
COMMIT;  

