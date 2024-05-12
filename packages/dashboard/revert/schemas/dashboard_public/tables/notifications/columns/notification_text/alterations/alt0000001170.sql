-- Revert: schemas/dashboard_public/tables/notifications/columns/notification_text/alterations/alt0000001170 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".notifications.notification_text IS NULL;
COMMIT;  

