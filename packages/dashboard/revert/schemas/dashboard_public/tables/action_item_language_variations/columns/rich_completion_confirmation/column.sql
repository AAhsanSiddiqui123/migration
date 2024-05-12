-- Revert: schemas/dashboard_public/tables/action_item_language_variations/columns/rich_completion_confirmation/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_language_variations DROP COLUMN rich_completion_confirmation;
COMMIT;  

