-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/activity_feed_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations DROP COLUMN activity_feed_text;
COMMIT;  

