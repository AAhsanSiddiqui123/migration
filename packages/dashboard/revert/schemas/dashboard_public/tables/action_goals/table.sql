-- Revert: schemas/dashboard_public/tables/action_goals/table from pg

BEGIN;
DROP TABLE "dashboard_public".action_goals;
COMMIT;  

