-- Revert: schemas/dashboard_public/tables/notifications/columns/notification_type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications DROP COLUMN notification_type;
COMMIT;  

