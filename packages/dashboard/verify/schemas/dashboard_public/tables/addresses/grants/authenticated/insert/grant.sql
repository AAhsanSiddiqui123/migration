-- Verify: schemas/dashboard_public/tables/addresses/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.addresses', 'insert', 'authenticated');
COMMIT;  

