-- Verify: schemas/dashboard_public/tables/crypto_addresses/triggers/crypto_addresses_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.crypto_addresses_immutable_tg');
COMMIT;  

