-- Revert: schemas/dashboard_public/tables/goals/constraints/goals_slug_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".goals 
    DROP CONSTRAINT goals_slug_key;

COMMIT;  

