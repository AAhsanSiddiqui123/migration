-- Revert: schemas/dashboard_public/tables/impacts_conditions/constraints/impacts_conditions_impact_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions 
    DROP CONSTRAINT impacts_conditions_impact_id_fkey;

COMMIT;  

