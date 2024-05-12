-- Deploy: schemas/dashboard_public/tables/notifications/columns/notification_text/alterations/alt0000001170 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/columns/notification_text/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".notifications.notification_text IS E'the text you actually see on the phone';
COMMIT;
