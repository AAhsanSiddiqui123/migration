-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/completion_rich_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations DROP COLUMN completion_rich_text;
COMMIT;  

