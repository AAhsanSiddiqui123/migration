-- Revert: schemas/dashboard_public/tables/objects/indexes/objects_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".objects_owner_id_idx;
COMMIT;  

