-- Verify: schemas/dashboard_public/tables/crypto_addresses/table on pg

BEGIN;
SELECT verify_table('dashboard_public.crypto_addresses');
COMMIT;  

