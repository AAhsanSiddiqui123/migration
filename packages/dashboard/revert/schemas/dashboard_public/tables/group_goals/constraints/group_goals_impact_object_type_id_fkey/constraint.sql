-- Revert: schemas/dashboard_public/tables/group_goals/constraints/group_goals_impact_object_type_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals 
    DROP CONSTRAINT group_goals_impact_object_type_id_fkey;

COMMIT;  

