-- Revert: schemas/dashboard_public/tables/goals/indexes/goals_impact_object_type_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".goals_impact_object_type_id_idx;
COMMIT;  

