-- Deploy: schemas/dashboard_public/tables/crypto_addresses/triggers/crypto_addresses_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/crypto_addresses/table

BEGIN;
CREATE TRIGGER crypto_addresses_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".crypto_addresses 
 FOR EACH ROW 
 WHEN (OLD.address IS DISTINCT FROM NEW.address AND old.address IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'address' );
COMMIT;
