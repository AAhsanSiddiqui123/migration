-- Revert: schemas/dashboard_public/tables/notifications/columns/notification_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications DROP COLUMN notification_text;
COMMIT;  

