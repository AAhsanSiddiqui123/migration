-- Revert: schemas/dashboard_public/tables/crypto_addresses/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( address, owner_id, is_primary ) ON TABLE "dashboard_public".crypto_addresses FROM authenticated;
COMMIT;  

