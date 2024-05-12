-- Verify: schemas/dashboard_public/tables/phone_numbers/table on pg

BEGIN;
SELECT verify_table('dashboard_public.phone_numbers');
COMMIT;  

