-- Revert: schemas/dashboard_public/tables/addresses/constraints/addresses_owner_id_fkey/alterations/alt0000001650 from pg

BEGIN;
COMMENT ON CONSTRAINT addresses_owner_id_fkey ON "dashboard_public".addresses IS NULL;
COMMIT;  

