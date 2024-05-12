-- Revert: schemas/dashboard_public/tables/action_goals/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_goals DROP COLUMN owner_id;
COMMIT;  

