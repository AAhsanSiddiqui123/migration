-- Revert: schemas/dashboard_public/tables/action_impacts/indexes/action_impacts_impact_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".action_impacts_impact_id_idx;
COMMIT;  

