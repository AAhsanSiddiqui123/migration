-- Revert: schemas/dashboard_public/tables/addresses/indexes/addresses_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".addresses_owner_id_idx;
COMMIT;  

