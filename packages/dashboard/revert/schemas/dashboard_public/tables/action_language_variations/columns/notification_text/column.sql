-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/notification_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations DROP COLUMN notification_text;
COMMIT;  

