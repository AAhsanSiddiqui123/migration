-- Revert: schemas/dashboard_public/tables/group_goals/constraints/group_goals_impact_unit_id_fkey/alterations/alt0000001152 from pg

BEGIN;
COMMENT ON CONSTRAINT group_goals_impact_unit_id_fkey ON "dashboard_public".group_goals IS NULL;
COMMIT;  

