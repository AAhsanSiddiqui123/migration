-- Revert: schemas/dashboard_public/tables/action_impacts/constraints/action_impacts_impact_id_fkey/alterations/alt0000000971 from pg

BEGIN;
COMMENT ON CONSTRAINT action_impacts_impact_id_fkey ON "dashboard_public".action_impacts IS NULL;
COMMIT;  

