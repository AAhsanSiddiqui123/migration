-- Revert: schemas/dashboard_public/tables/action_locations/columns/action_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_locations DROP COLUMN action_id;
COMMIT;  

