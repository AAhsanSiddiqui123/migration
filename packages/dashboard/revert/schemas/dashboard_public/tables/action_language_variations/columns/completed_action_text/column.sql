-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/completed_action_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations DROP COLUMN completed_action_text;
COMMIT;  

