-- Revert: schemas/dashboard_public/tables/action_goals/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_goals DROP COLUMN id;
COMMIT;  

