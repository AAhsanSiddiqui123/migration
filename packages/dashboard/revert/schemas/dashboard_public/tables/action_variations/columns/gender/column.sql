-- Revert: schemas/dashboard_public/tables/action_variations/columns/gender/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_variations DROP COLUMN gender;
COMMIT;  

