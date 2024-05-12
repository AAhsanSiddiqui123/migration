-- Revert: schemas/dashboard_public/tables/goals/constraints/goals_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".goals 
    DROP CONSTRAINT goals_pkey;

COMMIT;  

