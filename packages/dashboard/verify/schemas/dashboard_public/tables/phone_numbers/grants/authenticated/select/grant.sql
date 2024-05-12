-- Verify: schemas/dashboard_public/tables/phone_numbers/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.phone_numbers', 'select', 'authenticated');
COMMIT;  

