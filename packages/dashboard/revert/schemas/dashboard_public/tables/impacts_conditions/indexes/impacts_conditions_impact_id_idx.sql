-- Revert: schemas/dashboard_public/tables/impacts_conditions/indexes/impacts_conditions_impact_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".impacts_conditions_impact_id_idx;
COMMIT;  

