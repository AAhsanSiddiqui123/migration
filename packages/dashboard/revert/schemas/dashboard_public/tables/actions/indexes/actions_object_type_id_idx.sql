-- Revert: schemas/dashboard_public/tables/actions/indexes/actions_object_type_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".actions_object_type_id_idx;
COMMIT;  

