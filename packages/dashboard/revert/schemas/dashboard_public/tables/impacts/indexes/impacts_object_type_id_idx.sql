-- Revert: schemas/dashboard_public/tables/impacts/indexes/impacts_object_type_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".impacts_object_type_id_idx;
COMMIT;  

