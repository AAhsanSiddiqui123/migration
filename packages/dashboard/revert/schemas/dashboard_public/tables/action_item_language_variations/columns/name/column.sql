-- Revert: schemas/dashboard_public/tables/action_item_language_variations/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_language_variations DROP COLUMN name;
COMMIT;  

