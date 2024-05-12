-- Revert: schemas/dashboard_public/tables/action_variations/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_variations DROP COLUMN id;
COMMIT;  

