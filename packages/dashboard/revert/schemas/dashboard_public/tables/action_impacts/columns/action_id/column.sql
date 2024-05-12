-- Revert: schemas/dashboard_public/tables/action_impacts/columns/action_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_impacts DROP COLUMN action_id;
COMMIT;  

