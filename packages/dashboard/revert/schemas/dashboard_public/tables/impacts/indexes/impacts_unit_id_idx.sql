-- Revert: schemas/dashboard_public/tables/impacts/indexes/impacts_unit_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".impacts_unit_id_idx;
COMMIT;  

