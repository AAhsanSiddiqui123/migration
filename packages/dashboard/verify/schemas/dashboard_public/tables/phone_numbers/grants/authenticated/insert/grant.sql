-- Verify: schemas/dashboard_public/tables/phone_numbers/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.phone_numbers', 'insert', 'authenticated');
COMMIT;  

