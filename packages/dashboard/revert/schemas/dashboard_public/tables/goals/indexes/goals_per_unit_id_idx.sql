-- Revert: schemas/dashboard_public/tables/goals/indexes/goals_per_unit_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".goals_per_unit_id_idx;
COMMIT;  

