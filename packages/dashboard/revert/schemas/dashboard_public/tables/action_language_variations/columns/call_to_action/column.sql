-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/call_to_action/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations DROP COLUMN call_to_action;
COMMIT;  

