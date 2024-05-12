-- Revert: schemas/dashboard_public/tables/action_variations/columns/dob/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_variations DROP COLUMN dob;
COMMIT;  

