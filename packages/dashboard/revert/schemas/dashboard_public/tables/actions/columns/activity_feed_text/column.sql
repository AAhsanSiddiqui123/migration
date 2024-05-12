-- Revert: schemas/dashboard_public/tables/actions/columns/activity_feed_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN activity_feed_text;
COMMIT;  

