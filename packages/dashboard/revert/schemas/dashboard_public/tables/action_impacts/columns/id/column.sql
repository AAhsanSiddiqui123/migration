-- Revert: schemas/dashboard_public/tables/action_impacts/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_impacts DROP COLUMN id;
COMMIT;  

