-- Revert: schemas/dashboard_public/tables/goals/constraints/goals_impact_object_type_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".goals 
    DROP CONSTRAINT goals_impact_object_type_id_fkey;

COMMIT;  

