-- Revert: schemas/dashboard_public/tables/objects/indexes/objects_type_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".objects_type_id_idx;
COMMIT;  

