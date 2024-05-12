-- Verify: schemas/dashboard_public/tables/addresses/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.addresses', 'update', 'authenticated');
COMMIT;  

