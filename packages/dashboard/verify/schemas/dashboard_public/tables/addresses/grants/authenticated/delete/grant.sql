-- Verify: schemas/dashboard_public/tables/addresses/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.addresses', 'delete', 'authenticated');
COMMIT;  

