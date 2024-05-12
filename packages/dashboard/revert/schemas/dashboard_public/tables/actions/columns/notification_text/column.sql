-- Revert: schemas/dashboard_public/tables/actions/columns/notification_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN notification_text;
COMMIT;  

