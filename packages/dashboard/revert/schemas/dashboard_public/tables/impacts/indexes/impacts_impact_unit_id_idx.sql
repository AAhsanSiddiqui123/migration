-- Revert: schemas/dashboard_public/tables/impacts/indexes/impacts_impact_unit_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".impacts_impact_unit_id_idx;
COMMIT;  

