-- Revert: schemas/dashboard_public/tables/action_item_language_variations/columns/completed_button_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_language_variations DROP COLUMN completed_button_text;
COMMIT;  

