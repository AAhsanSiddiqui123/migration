-- Revert: schemas/dashboard_public/tables/action_item_language_variations/columns/lang_code/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_language_variations DROP COLUMN lang_code;
COMMIT;  

