-- Revert: schemas/dashboard_public/tables/action_goals/columns/action_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_goals DROP COLUMN action_id;
COMMIT;  

