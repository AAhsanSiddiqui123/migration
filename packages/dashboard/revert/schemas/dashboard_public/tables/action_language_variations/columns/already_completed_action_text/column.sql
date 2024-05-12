-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/already_completed_action_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations DROP COLUMN already_completed_action_text;
COMMIT;  

