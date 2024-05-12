-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/enable_notifications_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations DROP COLUMN enable_notifications_text;
COMMIT;  

