-- Revert: schemas/dashboard_public/tables/notifications/columns/notification_type/alterations/alt0000001167 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".notifications.notification_type IS NULL;
COMMIT;  

