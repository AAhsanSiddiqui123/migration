-- Deploy: schemas/dashboard_public/tables/notifications/columns/notification_type/alterations/alt0000001167 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/columns/notification_type/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".notifications.notification_type IS E'the verb';
COMMIT;
