-- Revert: schemas/dashboard_public/tables/group_goals/indexes/group_goals_group_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".group_goals_group_id_idx;
COMMIT;  

