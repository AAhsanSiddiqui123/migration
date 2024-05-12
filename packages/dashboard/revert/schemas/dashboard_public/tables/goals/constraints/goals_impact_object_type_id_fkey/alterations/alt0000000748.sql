-- Revert: schemas/dashboard_public/tables/goals/constraints/goals_impact_object_type_id_fkey/alterations/alt0000000748 from pg

BEGIN;
COMMENT ON CONSTRAINT goals_impact_object_type_id_fkey ON "dashboard_public".goals IS NULL;
COMMIT;  

