-- Verify: schemas/dashboard_public/tables/addresses/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.addresses', 'select', 'authenticated');
COMMIT;  

