-- Revert: schemas/dashboard_public/tables/crypto_addresses/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".crypto_addresses FROM authenticated;
COMMIT;  

