-- Revert: schemas/dashboard_public/tables/impacts_conditions/constraints/impacts_conditions_impact_id_fkey/alterations/alt0000000732 from pg

BEGIN;
COMMENT ON CONSTRAINT impacts_conditions_impact_id_fkey ON "dashboard_public".impacts_conditions IS NULL;
COMMIT;  

