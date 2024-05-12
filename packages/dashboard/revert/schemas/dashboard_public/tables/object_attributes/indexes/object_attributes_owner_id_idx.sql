-- Revert: schemas/dashboard_public/tables/object_attributes/indexes/object_attributes_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".object_attributes_owner_id_idx;
COMMIT;  

