-- Revert: schemas/dashboard_public/tables/action_locations/columns/coords/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_locations DROP COLUMN coords;
COMMIT;  

