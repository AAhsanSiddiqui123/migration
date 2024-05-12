-- Revert: schemas/dashboard_public/tables/goals/constraints/goals_name_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".goals 
    DROP CONSTRAINT goals_name_key;

COMMIT;  

