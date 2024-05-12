-- Verify: schemas/dashboard_public/tables/crypto_addresses/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.crypto_addresses', 'delete', 'authenticated');
COMMIT;  

