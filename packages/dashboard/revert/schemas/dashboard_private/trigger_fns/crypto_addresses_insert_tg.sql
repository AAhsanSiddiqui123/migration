-- Revert: schemas/dashboard_private/trigger_fns/crypto_addresses_insert_tg from pg

BEGIN;


DROP TRIGGER trigger_name
    ON "dashboard_public".crypto_addresses;

DROP FUNCTION "dashboard_private".crypto_addresses_insert_tg;

COMMIT;  

