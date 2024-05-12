-- Revert: schemas/dashboard_public/tables/action_variations/columns/income/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_variations DROP COLUMN income;
COMMIT;  

